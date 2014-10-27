#ifndef OTLIB_GLOBAL_H
#define OTLIB_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(OTLIB_LIBRARY)
#  define OTLIBSHARED_EXPORT Q_DECL_EXPORT
#else
#  define OTLIBSHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // OTLIB_GLOBAL_H
