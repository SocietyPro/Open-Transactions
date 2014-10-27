#-------------------------------------------------
#
# Project created by QtCreator 2014-09-22T13:04:53
#
#-------------------------------------------------

QT       -= core gui

TARGET = bigint
TEMPLATE = lib
include(../common.pri)

CONFIG += staticlib

SOURCES += \
	../../deps/src/bigint/BigInteger.cc \
	../../deps/src/bigint/BigIntegerAlgorithms.cc \
	../../deps/src/bigint/BigIntegerUtils.cc \
	../../deps/src/bigint/BigUnsigned.cc \
	../../deps/src/bigint/BigUnsignedInABase.cc

HEADERS +=
unix {
    target.path = /usr/lib
    INSTALLS += target
}

INCLUDEPATH += ../../deps/include/bigint/

