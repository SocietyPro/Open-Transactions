
#-------------------------------------------------
#
# Project created by QtCreator 2014-09-22T13:14:55
#
#-------------------------------------------------

QT       -= core gui

TARGET = chaiscript_stdlib
TEMPLATE = lib
include(../common.pri)

DEFINES += CHAISCRIPT_LIBRARY

SOURCES += \
	../../deps/src/chaiscript/chaiscript_stdlib.cpp

HEADERS +=\
        chaiscript_global.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}


INCLUDEPATH += ../../deps/include/chai5/chaiscript
INCLUDEPATH += ../../deps/include/chai5

CONFIG += c++11
