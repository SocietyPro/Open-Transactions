#-------------------------------------------------
#
# Project created by QtCreator 2014-09-22T14:20:14
#
#-------------------------------------------------

QT       -= core gui

TARGET = libprotobuf
TEMPLATE = lib
include(../common.pri)

CONFIG += staticlib

SOURCES += \
	../../../protobuf-2.5.0-win32/src/google/protobuf/stubs/atomicops_internals_x86_gcc.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/io/coded_stream.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/stubs/common.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/stubs/once.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/stubs/stringprintf.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/stubs/structurally_valid.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/stubs/strutil.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/stubs/substitute.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/io/gzip_stream.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/io/printer.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/io/tokenizer.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/io/zero_copy_stream.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/io/zero_copy_stream_impl.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/io/zero_copy_stream_impl_lite.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/descriptor.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/descriptor.pb.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/descriptor_database.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/dynamic_message.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/extension_set.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/extension_set_heavy.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/generated_message_reflection.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/generated_message_util.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/message.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/message_lite.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/reflection_ops.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/repeated_field.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/service.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/text_format.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/unknown_field_set.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/wire_format.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/wire_format_lite.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/compiler/importer.cc \
	../../../protobuf-2.5.0-win32/src/google/protobuf/compiler/parser.cc

HEADERS += \
    config.h
unix {
    target.path = /usr/lib
    INSTALLS += target
}

INCLUDEPATH += ../../../protobuf-2.5.0-win32/src/
INCLUDEPATH += ../../../protobuf-2.5.0-win32/src/google/protobuf/
INCLUDEPATH += ../../../protobuf-2.5.0-win32/src/google/protobuf/compiler
INCLUDEPATH += ../../../protobuf-2.5.0-win32/src/google/protobuf/io
INCLUDEPATH += ../../../protobuf-2.5.0-win32/src/google/protobuf/stubs
