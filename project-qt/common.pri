
win32: {
#	DESTDIR      = $${SOLUTION_DIR}../../lib/MinGW
}

SOLUTION_DIR =$${PWD}/


#-------------------------------------------------
# Output

win32:{

	equals(TEMPLATE,vcapp)|equals(TEMPLATE,vclib):{
		DESTDIR     = $${SOLUTION_DIR}../bin/$(PlatformName)/$(Configuration)
		MOC_DIR     = $${SOLUTION_DIR}../obj/$${TARGET}
		OBJECTS_DIR = $${SOLUTION_DIR}../obj/$${TARGET}
		RCC_DIR     = $${SOLUTION_DIR}../out/$${TARGET}/resources
		UI_DIR      = $${SOLUTION_DIR}../out/$${TARGET}/ui/
	}
	else:{
		!contains(QMAKE_HOST.arch, x86_64):{
			CONFIG(debug, debug|release):{
				DESTDIR = $${SOLUTION_DIR}../bin/Win32/Debug
			}
			else:{
				DESTDIR = $${SOLUTION_DIR}../bin/Win32/Release
			}
		}
		else:{
			CONFIG(debug, debug|release):{
				DESTDIR = $${SOLUTION_DIR}../bin/x64/Debug
			}
			else:{
				DESTDIR = $${SOLUTION_DIR}../bin/x64/Release
			}
		}
	}

	DEFINES += _UNICODE
}

