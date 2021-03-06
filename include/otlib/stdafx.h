// OTLIB
// Open Transactions Pre-Compiled Headers File

#pragma once

#ifdef _MSC_VER
//#include "ot_msvc.h"
#else
	#ifdef __MINGW32__
	//#include "ot_config.h"
	# else
	//#include "ot_config.h"
	#endif
#endif

#include "OTCommon.hpp"

#include "OTglobal.h"

// NOTE: Turns out moneypunct kind of sucks.
// As a result, for internationalization purposes,
// these values have to be set here before compilation.
//
#define OT_THOUSANDS_SEP ","
#define OT_DECIMAL_POINT "."


