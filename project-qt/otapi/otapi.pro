#-------------------------------------------------
#
# Project created by QtCreator 2014-09-23T12:45:47
#
#-------------------------------------------------

QT       -= core gui

TARGET = otapi
TEMPLATE = lib
include(../common.pri)

DEFINES += OTAPI_LIBRARY

SOURCES += \
	../../src/otapi/OpenTransactions.cpp \
	../../src/otapi/ot_commands_ot.cpp \
	../../src/otapi/ot_made_easy_ot.cpp \
	../../src/otapi/OT_ME.cpp \
	../../src/otapi/ot_opentxs_ot.cpp \
	../../src/otapi/ot_otapi_ot.cpp \
	../../src/otapi/ot_utility_ot.cpp \
	../../src/otapi/OTAPI.cpp \
	../../src/otapi/OTAPI_Exec.cpp \
	../../src/otapi/OTClient.cpp \
	../../src/otapi/OTMeChai.cpp \
	../../src/otapi/OTMeCpp.cpp \
	../../src/otapi/OTRecord.cpp \
	../../src/otapi/OTRecordList.cpp \
	../../src/otapi/OTServerConnection.cpp \
	../../src/otapi/OT_ME2.cpp

HEADERS +=

CONFIG+=c++11

unix {
    target.path = /usr/lib
    INSTALLS += target
}

INCLUDEPATH += ../../include/otapi
INCLUDEPATH += ../../include/otlib
INCLUDEPATH += ../../include/otextensions
INCLUDEPATH += ../../deps/include
INCLUDEPATH += ../../deps/include/misc
INCLUDEPATH += ../../deps/include/chai5


win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../zlib/release/ -lzlib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../zlib/debug/ -lzlib
else:unix: LIBS += -L$$OUT_PWD/../zlib/ -lzlib



# OTLIB iba aqui

# zlib
INCLUDEPATH += $$PWD/../zlib
DEPENDPATH += $$PWD/../zlib



# otextensions
win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -lotextensions
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/ -lotextensions
else:unix:                               LIBS += -L$$OUT_PWD/../../lib/ -lotextensions

INCLUDEPATH += $$PWD/../otextensions
DEPENDPATH += $$PWD/../otextensions

win32-g++:CONFIG(release, debug|release):              PRE_TARGETDEPS += $$OUT_PWD/../../bin/Win32/release/libotextensions.a
else:win32-g++:CONFIG(debug, debug|release):           PRE_TARGETDEPS += $$OUT_PWD/../../bin/Win32/debug/libotextensions.a
else:win32:!win32-g++:CONFIG(release, debug|release):  PRE_TARGETDEPS += $$OUT_PWD/../../bin/Win32/release/otextensions.lib
else:win32:!win32-g++:CONFIG(debug, debug|release):    PRE_TARGETDEPS += $$OUT_PWD/../../bin/Win32/debug/otextensions.lib
else:unix:                                             PRE_TARGETDEPS += $$OUT_PWD/../../lib/libotextensions.a

# ws2_32
LIBS += -lws2_32

# ZMQ
win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -lzmq
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/ -lzmq
else:unix:                               LIBS += -L$$OUT_PWD/../../lib/ -lzmq

INCLUDEPATH += $$PWD/../zmq
DEPENDPATH += $$PWD/../zmq

win32-g++:CONFIG(release, debug|release):             PRE_TARGETDEPS += $$OUT_PWD/../../bin/Win32/release/libzmq.a
else:win32-g++:CONFIG(debug, debug|release):          PRE_TARGETDEPS += $$OUT_PWD/../../bin/Win32/debug/libzmq.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../bin/Win32/release/zmq.lib
else:win32:!win32-g++:CONFIG(debug, debug|release):   PRE_TARGETDEPS += $$OUT_PWD/../../bin/Win32/debug/zmq.lib
else:unix:                                            PRE_TARGETDEPS += $$OUT_PWD/../../lib/libzmq.a

# otlib
INCLUDEPATH += $$PWD/../otlib
DEPENDPATH += $$PWD/../otlib

win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../Win32/lib/release/ -lotlib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../Win32/lib/debug/ -lotlib
else:unix:!macx:                         LIBS += -L$$OUT_PWD/../otlib/ -lotlib
