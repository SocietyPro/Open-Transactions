#-------------------------------------------------
#
# Project created by QtCreator 2014-09-26T16:24:07
#
#-------------------------------------------------

QT       -= core gui

TARGET = otextensions
TEMPLATE = lib
include(../common.pri)

CONFIG += staticlib
CONFIG += C++11

SOURCES += \
	../../src/otextensions/OTSocket.cpp

HEADERS +=
unix {
    target.path = /usr/lib
    INSTALLS += target
}

INCLUDEPATH += ../../include/otextensions/
INCLUDEPATH += ../../include/otlib/
INCLUDEPATH += ../../deps/include/
INCLUDEPATH += ../../deps/include/misc/

