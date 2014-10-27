#-------------------------------------------------
#
# Project created by QtCreator 2014-09-22T12:56:31
#
#-------------------------------------------------

QT       -= core gui

TARGET = irrxml
TEMPLATE = lib
include(../common.pri)

CONFIG += staticlib

SOURCES += \
	../../deps/src/irrxml/irrXML.cpp

HEADERS += \
	../../deps/include/irrxml/CXMLReaderImpl.hpp \
	../../deps/include/irrxml/fast_atof.hpp \
	../../deps/include/irrxml/heapsort.hpp \
	../../deps/include/irrxml/irrArray.hpp \
	../../deps/include/irrxml/irrString.hpp \
	../../deps/include/irrxml/irrTypes.hpp \
	../../deps/include/irrxml/irrXML.hpp
unix {
    target.path = /usr/lib
    INSTALLS += target
}

INCLUDEPATH += ../../deps/include/irrxml
