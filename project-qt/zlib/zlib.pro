#-------------------------------------------------
#
# Project created by QtCreator 2014-09-22T15:53:59
#
#-------------------------------------------------

QT       -= core gui

TARGET = zlib
TEMPLATE = lib
include(../common.pri)

DEFINES += ZLIB_LIBRARY

SOURCES += \
	../../deps/src/zlib/adler32.c \
	../../deps/src/zlib/compress.c \
	../../deps/src/zlib/crc32.c \
	../../deps/src/zlib/deflate.c \
	../../deps/src/zlib/gzclose.c \
	../../deps/src/zlib/gzlib.c \
	../../deps/src/zlib/gzread.c \
	../../deps/src/zlib/gzwrite.c \
	../../deps/src/zlib/infback.c \
	../../deps/src/zlib/inffast.c \
	../../deps/src/zlib/inflate.c \
	../../deps/src/zlib/inftrees.c \
	../../deps/src/zlib/trees.c \
	../../deps/src/zlib/uncompr.c \
	../../deps/src/zlib/zutil.c

HEADERS +=

unix {
    target.path = /usr/lib
    INSTALLS += target
}


INCLUDEPATH += ../../deps/include/zlib/
