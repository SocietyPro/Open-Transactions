
#include "stdafx.hpp"

#include "ot_me_switch.hpp"

#include "OT_ME.hpp"

#include "OTAPI.hpp"
#include "OTDataFolder.hpp"
#include "OTLog.hpp"
#include "OTMeCpp.hpp"
#include "OTPaths.hpp"
#include "OTStorage.hpp"
#include "OTVariable.hpp"

#ifdef OT_USE_SCRIPT_CHAI
#include "OTMeChai.hpp"
#  include "OTScriptChai.hpp"
#  include <chaiscript/chaiscript.hpp>
#  ifdef OT_USE_CHAI_STDLIB
#  include <chaiscript/chaiscript_stdlib.hpp>
#  endif
#endif



// ********************************************************************

// Used in RegisterAPIWithScript.
// (In D, this would be a nested function, but C++ doesn't support that
// without using a nested class as a kludge.)
//
bool NewScriptExists(const OTString & strScriptFilename, bool bIsHeader, OTString & out_ScriptFilepath)
{
	//
	// "so $(prefix)/lib/opentxs for the headers,
	// and others:
	// 1st priorty: $(data_dir)/scripts
	// 2nd priorty: $(prefix)/lib/opentxs/scripts
	//
	int64_t lFileLength(0);

	OT_ASSERT_MSG(strScriptFilename.Exists(), "NewScriptHeaderExists: Error! Filename not Supplied!");
	if (3 > strScriptFilename.GetLength())
	{
		OTLog::vError("NewScriptHeaderExists: Filename: %s  is too short!\n", strScriptFilename.Get());
		OT_FAIL;
	}

	OTString strScriptsFolder(OTPaths::ScriptsFolder()); //	/usr/local / lib / opentxs  OR (android) res/raw
	{ bool bGetFolderSuccess = strScriptsFolder.Exists() && 3 < strScriptsFolder.GetLength();
	OT_ASSERT_MSG(bGetFolderSuccess, "NewScriptHeaderExists: Unalbe to Get Scripts Path"); }

	if (bIsHeader) {

		{ bool bBuildFullPathSuccess = OTPaths::AppendFile(out_ScriptFilepath, strScriptsFolder, strScriptFilename);
		OT_ASSERT_MSG(bBuildFullPathSuccess, "NewScriptHeaderExists: Unalbe to Build Full Script Path"); }

		return OTPaths::FileExists(out_ScriptFilepath, lFileLength);
	}
	else {
		OTString strDataFolder(OTDataFolder::Get()), strDataScriptsFolder;

		{ bool bGetFolderSuccess = strDataFolder.Exists() && 3 < strDataFolder.GetLength();
		OT_ASSERT_MSG(bGetFolderSuccess, "NewScriptHeaderExists: Unalbe to Get Scripts Path"); }

		{ bool bBuildScriptPath = OTPaths::RelativeToCanonical(strDataScriptsFolder, strDataFolder, "scripts");
		OT_ASSERT_MSG(bBuildScriptPath, "NewScriptHeaderExists: Unalbe to Build Full Script Path"); }

		{ bool bBuildFullPathSuccess = OTPaths::RelativeToCanonical(out_ScriptFilepath, strDataScriptsFolder, strScriptFilename);
		OT_ASSERT_MSG(bBuildFullPathSuccess, "NewScriptHeaderExists: Unalbe to Build Full Script Path"); }

		if (OTPaths::FileExists(out_ScriptFilepath, lFileLength)) return true;
		else {
			OTString strGlobalScriptsFolder;

			{ bool bBuildScriptPath = OTPaths::RelativeToCanonical(strGlobalScriptsFolder, strScriptsFolder, "scripts");
			OT_ASSERT_MSG(bBuildScriptPath, "NewScriptHeaderExists: Unalbe to Build Full Script Path"); }
			{ bool bBuildFullPathSuccess = OTPaths::RelativeToCanonical(out_ScriptFilepath, strGlobalScriptsFolder, strScriptFilename);
			OT_ASSERT_MSG(bBuildFullPathSuccess, "NewScriptHeaderExists: Unalbe to Build Full Script Path"); }

			return OTPaths::FileExists(out_ScriptFilepath, lFileLength);
		}
	}
}


#ifdef OT_USE_SCRIPT_CHAI

//bool OT_ME::Register_Headers_With_Script_Lua(OTScriptLua & theScript)

// Note: Private method. Assumes theScript is m_pScript (but now as
// a specific type, aka OTScriptChai, vs just being an OTScript.)
//
bool OT_ME::Register_Headers_With_Script_Chai(OTScriptChai & theScript)
{
	using namespace chaiscript;
	{
		/// What does it do?  First, ot_utility.ot adds some much-needed utility functions for
		/// commonly repeated actions while using the OTAPI, such as for grabbing the request
		/// number, syncing the transaction number, sending a request or a transaction to a
		/// server, etc. Next, a higher layer is added in otapi.ot, which uses a functor to
		/// provide a much simpler interface to all of the use cases of OT. Meaning, if you
		/// want to withdraw some cash, or put an offer on a market, you don't have to deal
		/// with timeouts, retries, flushing the message buffer, popping the server reply after
		/// a set delay, blah blah blah. Instead, you just invoke a single functor call, and
		/// it returns either a string containing the server's reply, or null.
		/// Finally, an ULTRA-HIGH LEVEL interface is added on top of that, in ot_made_easy.ot
		/// which aims to provide one-call interfaces for an entire script-based OT client.
		/// (Whereas otapi.ot offers one-call interfaces to all of the OTAPI server messages
		/// and transaction requests, ot_made_easy.ot then USES that in order to provide a
		/// one-call interface of a real client who sends such messages and makes such requests.
		/// FOR EXAMPLE:  otapi might have a "Withdraw Cash" function which handles the entire
		/// message and returns the server's response. Whereas ot_made_easy would have the complete
		/// implementation, in script form, of an actual OT client that USES that "Withdraw Cash"
		/// message, along with manipulating its own local purse, pulling coins off or pushing them
		/// on based on transfers from other users, etc etc etc.  Just like Moneychanger uses
		/// the OTAPI_Func, so does the ot_made_easy class use the OTAPI_Func. Therefore ot_made_easy
		/// is aiming to be a script-based replacement for Moneychanger itself. It is the GUI.
		/// The Client.
		// There were many path problems with including these scripts inside the user scripts,
		// so I am forcing the issue here, to keep things clean. This way, the entire OT API,
		// both the C++ functions, as well as the below script functions, grows together as one
		// and will be seen as one from inside the scripts, where script programmers can
		// pick and choose which level of abstraction that they need.
		//
		// ******************************************************************
		//
		//  SCRIPT HEADERS
		//

		OTLog::vOutput(1, "\n%s: Using Script Headers:\n", __FUNCTION__);

		OTString strHeaderFilePath_01;
		if (NewScriptExists("ot_utility.ot", true, strHeaderFilePath_01)) { OTLog::vOutput(1, " %s\n", strHeaderFilePath_01.Get()); }
		else { OTLog::vError("%s: Header script not found: %s\n", __FUNCTION__, strHeaderFilePath_01.Get()); return false; }

		OTString strHeaderFilePath_02;
		if (NewScriptExists("otapi.ot", true, strHeaderFilePath_02)) { OTLog::vOutput(1, " %s\n", strHeaderFilePath_02.Get()); }
		else { OTLog::vError("%s: Header script not found: %s\n", __FUNCTION__, strHeaderFilePath_02.Get()); return false; }

#if USE_OLD_CHAISCRIPT == 1
		OTString strHeaderFilePath_03;
		if (NewScriptExists("ot_made_easy.ot", true, strHeaderFilePath_03)) { OTLog::vOutput(1, " %s\n", strHeaderFilePath_03.Get()); }
		else { OTLog::vError("%s: Header script not found: %s\n", __FUNCTION__, strHeaderFilePath_03.Get()); return false; }

		OTString strHeaderFilePath_04;
		if (NewScriptExists("ot_commands.ot", true, strHeaderFilePath_04)) { OTLog::vOutput(1, " %s\n\n", strHeaderFilePath_04.Get()); }
		else { OTLog::vError("%s: Header script not found: %s\n", __FUNCTION__, strHeaderFilePath_04.Get()); return false; }
#endif

		try
		{
			theScript.chai->use(strHeaderFilePath_01.Get());
			theScript.chai->use(strHeaderFilePath_02.Get());
#if USE_OLD_CHAISCRIPT == 1
			theScript.chai->use(strHeaderFilePath_03.Get());
			theScript.chai->use(strHeaderFilePath_04.Get());
#endif
		}
		catch (const chaiscript::exception::eval_error &ee)
		{
			// Error in script parsing / execution
			OTLog::vError("%s: Caught chaiscript::exception::eval_error : %s. \n"
				"   File: %s\n"
				"   Start position, line: %d column: %d\n"
				"   End position,   line: %d column: %d\n", __FUNCTION__,
				ee.reason.c_str(), ee.filename.c_str(),
				ee.start_position.line, ee.start_position.column,
				ee.end_position.line, ee.end_position.column);

			std::cout << ee.what();
			if (ee.call_stack.size() > 0)
			{
				std::cout << "during evaluation at (" << ee.call_stack[0]->start.line << ", " << ee.call_stack[0]->start.column << ")";
			}
			std::cout << std::endl << std::endl;

			if (ee.call_stack.size() > 0)
			{
				for (size_t j = 1; j < ee.call_stack.size(); ++j) {
					if (ee.call_stack[j]->identifier != chaiscript::AST_Node_Type::Block
						&& ee.call_stack[j]->identifier != chaiscript::AST_Node_Type::File)
					{
						std::cout << std::endl;
						std::cout << "  from " << *(ee.call_stack[j]->filename) << " (" << ee.call_stack[j]->start.line << ", " << ee.call_stack[j]->start.column << ") : ";
						std::cout << ee.call_stack[j]->text << std::endl;
					}
				}
			}
			std::cout << std::endl;
			return false;
		}
		catch (const chaiscript::exception::bad_boxed_cast &e) {
			// Error unboxing return value
			OTLog::vError("%s: Caught chaiscript::exception::bad_boxed_cast : %s.\n", __FUNCTION__,
				(e.what() != NULL) ? e.what() : "e.what() returned null, sorry");
			return false;
		}
		catch (const std::exception &e) {
			// Error explicitly thrown from script
			OTLog::vError("%s: Caught std::exception exception: %s\n", __FUNCTION__,
				(e.what() != NULL) ? e.what() : "e.what() returned null, sorry");
			return false;
		}
		//          catch (chaiscript::Boxed_Value bv) {}
		catch (...)
		{
			OTLog::vError("%s: Caught exception.\n", __FUNCTION__);
			return false;
		}

		return true; // Success (hopefully!)
	}
}

#endif // OT_USE_SCRIPT_CHAI
