#-------------------------------------------------
#
# Project created by QtCreator 2014-09-22T13:41:52
#
#-------------------------------------------------

QT       -= core gui

TARGET = lucre
TEMPLATE = lib
CONFIG += staticlib
include(../common.pri)

SOURCES += \
	../../deps/src/lucre/bankimp.cpp

HEADERS +=
unix {
    target.path = /usr/lib
    INSTALLS += target
}

INCLUDEPATH += ../../deps/include/lucre/
INCLUDEPATH += ../../../OpenSSL-Win32/include
