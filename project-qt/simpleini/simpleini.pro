
#-------------------------------------------------
#
# Project created by QtCreator 2014-09-22T13:47:36
#
#-------------------------------------------------

QT       -= core gui

TARGET = simpleini
TEMPLATE = lib
include(../common.pri)
CONFIG += staticlib

SOURCES += \
	../../deps/src/simpleini/ConvertUTF.cpp

HEADERS +=
unix {
    target.path = /usr/lib
    INSTALLS += target
}

INCLUDEPATH += ../../deps/include/simpleini/
