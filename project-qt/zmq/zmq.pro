#-------------------------------------------------
#
# Project created by QtCreator 2014-09-26T16:43:09
#
#-------------------------------------------------

QT       -= core gui

TARGET = zmq
TEMPLATE = lib
include(../common.pri)

DEFINES += DLL_EXPORT ZMQ_EXPORT

SOURCES += \
	../../deps/src/zmq/address.cpp \
	../../deps/src/zmq/clock.cpp \
	../../deps/src/zmq/ctx.cpp \
	../../deps/src/zmq/curve_client.cpp \
	../../deps/src/zmq/curve_server.cpp \
	../../deps/src/zmq/dealer.cpp \
	../../deps/src/zmq/devpoll.cpp \
	../../deps/src/zmq/dist.cpp \
	../../deps/src/zmq/epoll.cpp \
	../../deps/src/zmq/err.cpp \
	../../deps/src/zmq/fq.cpp \
	../../deps/src/zmq/io_object.cpp \
	../../deps/src/zmq/io_thread.cpp \
	../../deps/src/zmq/ip.cpp \
	../../deps/src/zmq/ipc_address.cpp \
	../../deps/src/zmq/ipc_connecter.cpp \
	../../deps/src/zmq/ipc_listener.cpp \
	../../deps/src/zmq/kqueue.cpp \
	../../deps/src/zmq/lb.cpp \
	../../deps/src/zmq/mailbox.cpp \
	../../deps/src/zmq/mechanism.cpp \
	../../deps/src/zmq/msg.cpp \
	../../deps/src/zmq/mtrie.cpp \
	../../deps/src/zmq/norm_engine.cpp \
	../../deps/src/zmq/null_mechanism.cpp \
	../../deps/src/zmq/object.cpp \
	../../deps/src/zmq/options.cpp \
	../../deps/src/zmq/own.cpp \
	../../deps/src/zmq/pair.cpp \
	../../deps/src/zmq/pgm_receiver.cpp \
	../../deps/src/zmq/pgm_sender.cpp \
	../../deps/src/zmq/pgm_socket.cpp \
	../../deps/src/zmq/pipe.cpp \
	../../deps/src/zmq/plain_mechanism.cpp \
	../../deps/src/zmq/poll.cpp \
	../../deps/src/zmq/poller_base.cpp \
	../../deps/src/zmq/precompiled.cpp \
	../../deps/src/zmq/proxy.cpp \
	../../deps/src/zmq/pub.cpp \
	../../deps/src/zmq/pull.cpp \
	../../deps/src/zmq/push.cpp \
	../../deps/src/zmq/random.cpp \
	../../deps/src/zmq/raw_decoder.cpp \
	../../deps/src/zmq/raw_encoder.cpp \
	../../deps/src/zmq/reaper.cpp \
	../../deps/src/zmq/rep.cpp \
	../../deps/src/zmq/req.cpp \
	../../deps/src/zmq/router.cpp \
	../../deps/src/zmq/select.cpp \
	../../deps/src/zmq/session_base.cpp \
	../../deps/src/zmq/signaler.cpp \
	../../deps/src/zmq/socket_base.cpp \
	../../deps/src/zmq/stream.cpp \
	../../deps/src/zmq/stream_engine.cpp \
	../../deps/src/zmq/sub.cpp \
	../../deps/src/zmq/tcp.cpp \
	../../deps/src/zmq/tcp_address.cpp \
	../../deps/src/zmq/tcp_connecter.cpp \
	../../deps/src/zmq/tcp_listener.cpp \
	../../deps/src/zmq/thread.cpp \
	../../deps/src/zmq/tipc_address.cpp \
	../../deps/src/zmq/tipc_connecter.cpp \
	../../deps/src/zmq/tipc_listener.cpp \
	../../deps/src/zmq/trie.cpp \
	../../deps/src/zmq/v1_decoder.cpp \
	../../deps/src/zmq/v1_encoder.cpp \
	../../deps/src/zmq/v2_decoder.cpp \
	../../deps/src/zmq/v2_encoder.cpp \
	../../deps/src/zmq/xpub.cpp \
	../../deps/src/zmq/xsub.cpp \
	../../deps/src/zmq/zmq.cpp \
	../../deps/src/zmq/zmq_utils.cpp

HEADERS +=
unix {
    target.path = /usr/lib
    INSTALLS += target
}


INCLUDEPATH += ../../deps/include/
INCLUDEPATH += ../../deps/include/zmq/


LIBS += -lWs2_32


