#-------------------------------------------------
#
# Project created by QtCreator 2014-09-22T09:43:53
#
#-------------------------------------------------

QT       -= core gui

TARGET = otlib
TEMPLATE = lib
include(../common.pri)

DEFINES += OTLIB_LIBRARY

SOURCES += \
	../../src/otlib/Bitcoin.pb.cc \
	../../src/otlib/Generics.pb.cc \
	../../src/otlib/Markets.pb.cc \
	../../src/otlib/Moneychanger.pb.cc \
	../../src/otlib/OTAccount.cpp \
	../../src/otlib/OTAcctFunctor.cpp \
	../../src/otlib/OTAcctList.cpp \
	../../src/otlib/OTAgent.cpp \
	../../src/otlib/OTAgreement.cpp \
	../../src/otlib/OTAmount.cpp \
	../../src/otlib/OTASCIIArmor.cpp \
	../../src/otlib/OTAssert.cpp \
	../../src/otlib/OTAssetContract.cpp \
	../../src/otlib/OTAsymmetricKey.cpp \
	../../src/otlib/OTAsymmetricKeyOpenSSL.cpp \
	../../src/otlib/OTAsymmetricKeyOpenSSLPrivdp.cpp \
	../../src/otlib/OTBasket.cpp \
	../../src/otlib/OTBasketItem.cpp \
	../../src/otlib/OTBylaw.cpp \
	../../src/otlib/OTCachedKey.cpp \
	../../src/otlib/OTCallback.cpp \
	../../src/otlib/OTCaller.cpp \
	../../src/otlib/OTCheque.cpp \
	../../src/otlib/OTClause.cpp \
	../../src/otlib/OTContract.cpp \
	../../src/otlib/OTCredential.cpp \
	../../src/otlib/OTCron.cpp \
	../../src/otlib/OTCronItem.cpp \
	../../src/otlib/OTCrypto.cpp \
	../../src/otlib/OTData.cpp \
	../../src/otlib/OTDataCheck.cpp \
	../../src/otlib/OTDataFolder.cpp \
	../../src/otlib/OTDigitalCash.cpp \
	../../src/otlib/OTEnvelope.cpp \
	../../src/otlib/OTFolders.cpp \
	../../src/otlib/OTIdentifier.cpp \
	../../src/otlib/OTInstrument.cpp \
	../../src/otlib/OTItem.cpp \
	../../src/otlib/OTKeyCredential.cpp \
	../../src/otlib/OTKeypair.cpp \
	../../src/otlib/OTKeyring.cpp \
	../../src/otlib/OTLedger.cpp \
	../../src/otlib/OTLog.cpp \
	../../src/otlib/OTLowLevelKeyData.cpp \
	../../src/otlib/OTMarket.cpp \
	../../src/otlib/OTMasterkey.cpp \
	../../src/otlib/OTMessage.cpp \
	../../src/otlib/OTMessageBuffer.cpp \
	../../src/otlib/OTMint.cpp \
	../../src/otlib/OTMintLucre.cpp \
	../../src/otlib/OTNumList.cpp \
	../../src/otlib/OTNymOrSymmetricKey.cpp \
	../../src/otlib/OTOffer.cpp \
	../../src/otlib/OTParty.cpp \
	../../src/otlib/OTPartyAccount.cpp \
	../../src/otlib/OTPassword.cpp \
	../../src/otlib/OTPasswordData.cpp \
	../../src/otlib/OTPaths.cpp \
	../../src/otlib/OTPayload.cpp \
	../../src/otlib/OTPayment.cpp \
	../../src/otlib/OTPaymentPlan.cpp \
	../../src/otlib/OTPseudonym.cpp \
	../../src/otlib/OTPurse.cpp \
	../../src/otlib/OTScript.cpp \
	../../src/otlib/OTScriptable.cpp \
	../../src/otlib/OTScriptChai.cpp \
	../../src/otlib/OTServerContract.cpp \
	../../src/otlib/OTSettings.cpp \
	../../src/otlib/OTSignature.cpp \
	../../src/otlib/OTSignedFile.cpp \
	../../src/otlib/OTSmartContract.cpp \
	../../src/otlib/OTStash.cpp \
	../../src/otlib/OTStashItem.cpp \
	../../src/otlib/OTStorage.cpp \
	../../src/otlib/OTString.cpp \
	../../src/otlib/OTStringXML.cpp \
	../../src/otlib/OTSubcredential.cpp \
	../../src/otlib/OTSubkey.cpp \
	../../src/otlib/OTSymmetricKey.cpp \
	../../src/otlib/OTToken.cpp \
	../../src/otlib/OTTokenLucre.cpp \
	../../src/otlib/OTTrackable.cpp \
	../../src/otlib/OTTrade.cpp \
	../../src/otlib/OTTransaction.cpp \
	../../src/otlib/OTTransactionType.cpp \
	../../src/otlib/OTVariable.cpp \
	../../src/otlib/OTWallet.cpp \
	../../src/otlib/OTWindowsRegistryTools.cpp \
	../../deps/src/misc/anyoption.cpp \
	../../deps/src/misc/Timer.cpp \
	../../deps/src/misc/tinythread.cpp \
	../../deps/src/misc/mkcert.cpp

HEADERS +=\
        otlib_global.h \
	../../include/otlib/Bitcoin.pb.h \
	../../include/otlib/constants.h \
	../../include/otlib/ExportWrapper.h \
	../../include/otlib/fast_mutex.h \
	../../include/otlib/Generics.pb.h \
	../../include/otlib/Markets.pb.h \
	../../include/otlib/Moneychanger.pb.h \
	../../include/otlib/OTAccount.hpp \
	../../include/otlib/OTAcctFunctor.hpp \
	../../include/otlib/OTAcctList.hpp \
	../../include/otlib/OTAgent.hpp \
	../../include/otlib/OTAgreement.hpp \
	../../include/otlib/OTAmount.hpp \
	../../include/otlib/OTASCIIArmor.hpp \
	../../include/otlib/OTAssert.hpp \
	../../include/otlib/OTAssetContract.hpp \
	../../include/otlib/OTAsymmetricKey.hpp \
	../../include/otlib/OTAsymmetricKey_OpenSSLPrivdp.hpp \
	../../include/otlib/OTAsymmetricKeyOpenSSL.hpp \
	../../include/otlib/OTBasket.hpp \
	../../include/otlib/OTBasketItem.hpp \
	../../include/otlib/OTBylaw.hpp \
	../../include/otlib/OTCachedKey.hpp \
	../../include/otlib/OTCallback.hpp \
	../../include/otlib/OTCaller.hpp \
	../../include/otlib/OTCheque.hpp \
	../../include/otlib/OTClause.hpp \
	../../include/otlib/OTCleanup.hpp \
	../../include/otlib/OTCommon.hpp \
	../../include/otlib/OTContract.hpp \
	../../include/otlib/OTCredential.hpp \
	../../include/otlib/OTCron.hpp \
	../../include/otlib/OTCronItem.hpp \
	../../include/otlib/OTCrypto.hpp \
	../../include/otlib/OTData.hpp \
	../../include/otlib/OTDataCheck.hpp \
	../../include/otlib/OTDataFolder.hpp \
	../../include/otlib/OTDigitalCash.hpp \
	../../include/otlib/OTEnvelope.hpp \
	../../include/otlib/OTFolders.hpp \
	../../include/otlib/OTglobal.h \
	../../include/otlib/OTIdentifier.hpp \
	../../include/otlib/OTInstrument.hpp \
	../../include/otlib/OTItem.hpp \
	../../include/otlib/OTKeyCredential.hpp \
	../../include/otlib/OTKeypair.hpp \
	../../include/otlib/OTKeyring.hpp \
	../../include/otlib/OTLedger.hpp \
	../../include/otlib/OTLib.hpp \
	../../include/otlib/OTLibPriv.hpp \
	../../include/otlib/OTLog.hpp \
	../../include/otlib/OTLowLevelKeyData.hpp \
	../../include/otlib/OTMarket.hpp \
	../../include/otlib/OTMasterkey.hpp \
	../../include/otlib/OTMessage.hpp \
	../../include/otlib/OTMessageBuffer.hpp \
	../../include/otlib/OTMessageOutBuffer.hpp \
	../../include/otlib/OTMint.hpp \
	../../include/otlib/OTMintLucre.hpp \
	../../include/otlib/OTNumList.hpp \
	../../include/otlib/OTNymOrSymmetricKey.hpp \
	../../include/otlib/OTOffer.hpp \
	../../include/otlib/OTParty.hpp \
	../../include/otlib/OTPartyAccount.hpp \
	../../include/otlib/OTPassword.hpp \
	../../include/otlib/OTPasswordData.hpp \
	../../include/otlib/OTPaths.hpp \
	../../include/otlib/OTPayload.hpp \
	../../include/otlib/OTPayment.hpp \
	../../include/otlib/OTPaymentPlan.hpp \
	../../include/otlib/OTPseudonym.hpp \
	../../include/otlib/OTPurse.hpp \
	../../include/otlib/OTScript.hpp \
	../../include/otlib/OTScriptable.hpp \
	../../include/otlib/OTScriptChai.hpp \
	../../include/otlib/OTServerContract.hpp \
	../../include/otlib/OTSettings.hpp \
	../../include/otlib/OTSignature.hpp \
	../../include/otlib/OTSignatureMetadata.hpp \
	../../include/otlib/OTSignedFile.hpp \
	../../include/otlib/OTSmartContract.hpp \
	../../include/otlib/OTStash.hpp \
	../../include/otlib/OTStashItem.hpp \
	../../include/otlib/OTStorage.hpp \
	../../include/otlib/OTStoragePB.hpp \
	../../include/otlib/OTString.hpp \
	../../include/otlib/OTStringXML.hpp \
	../../include/otlib/OTSubcredential.hpp \
	../../include/otlib/OTSubkey.hpp \
	../../include/otlib/OTSymmetricKey.hpp \
	../../include/otlib/OTToken.hpp \
	../../include/otlib/OTTokenLucre.hpp \
	../../include/otlib/OTTrackable.hpp \
	../../include/otlib/OTTrade.hpp \
	../../include/otlib/OTTransaction.hpp \
	../../include/otlib/OTTransactionType.hpp \
	../../include/otlib/OTVariable.hpp \
	../../include/otlib/OTWallet.hpp \
	../../include/otlib/OTWindowsRegistryTools.hpp \
	../../include/otlib/stacktrace.h \
	../../include/otlib/stdafx.h \
	../../include/otlib/stdafx.hpp \
	../../include/otlib/TR1_Wrapper.hpp \
	../../include/otbin/Win32_utf8conv.hpp \
	../../include/otbin/Win32_utf8conv_inl.hpp \
	../../include/otlib/WinsockWrapper.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}


INCLUDEPATH += ../../deps/include
INCLUDEPATH += ../../deps/include/misc
INCLUDEPATH += ../../deps/include/chai5
INCLUDEPATH += ../../include/otlib
INCLUDEPATH += ../../include
INCLUDEPATH += ../../include/zlib
INCLUDEPATH += ../../../OpenSSL-Win32/include
INCLUDEPATH += ../../../protobuf-2.5.0-win32/vsprojects/include

CONFIG += c++11

# ZLIB
win32:CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -lzlib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/ -lzlib

INCLUDEPATH += $$PWD/../zlib
DEPENDPATH += $$PWD/../zlib

# LIB PROTOBUUF
win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -llibprotobuf
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/ -llibprotobuf
else:unix: LIBS += -L$$OUT_PWD/../../lib/ -llibprotobuf

INCLUDEPATH += $$PWD/../libprotobuf
DEPENDPATH += $$PWD/../libprotobuf

# Lib IRRXML
win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -lirrxml
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/ -lirrxml
else:unix: LIBS += -L$$OUT_PWD/../../lib/ -lirrxml

INCLUDEPATH += $$PWD/../irrxml
DEPENDPATH += $$PWD/../irrxml

# Lib BIGINT
win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -lbigint
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/ -lbigint

INCLUDEPATH += $$PWD/../bigint
DEPENDPATH += $$PWD/../bigint

# Lib CHAISCRIPT
win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -lchaiscript_stdlib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/ -lchaiscript_stdlib

INCLUDEPATH += $$PWD/../chaiscript
DEPENDPATH += $$PWD/../chaiscript

# Lib LUCRE
win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -llucre
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/ -llucre

INCLUDEPATH += $$PWD/../lucre
DEPENDPATH += $$PWD/../lucre

# Lib OpenSSL
LIBS += -L../../../OpenSSL-Win32/lib/MinGW    -lws2_32 -lwinmm -leay32 -lssleay32

# Lib SIMPLEINI
win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/release/ -lsimpleini
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../bin/Win32/debug/ -lsimpleini

INCLUDEPATH += $$PWD/../simpleini
DEPENDPATH += $$PWD/../simpleini
