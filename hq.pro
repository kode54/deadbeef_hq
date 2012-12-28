#-------------------------------------------------
#
# Project created by QtCreator 2012-12-24T12:47:27
#
#-------------------------------------------------

QT       -= core gui

TARGET = hq
TEMPLATE = lib

DEFINES += HQ_LIBRARY

QMAKE_CFLAGS += -std=c99

LIBS += -L$$OUT_PWD/QSoundCore/Core/ \
        -L$$OUT_PWD/psflib/

LIBS += -lpsflib -lQSoundCore -lz

DEPENDPATH += $$PWD/QSoundCore/Core \
              $$PWD/psflib

PRE_TARGETDEPS += $$OUT_PWD/QSoundCore/Core/libQSoundCore.a \
                  $$OUT_PWD/psflib/libpsflib.a

INCLUDEPATH += QSoundCore/Core \
               psflib

SOURCES += \
    hqplug.c

HEADERS +=

unix:!symbian {
    maemo5 {
        target.path = /opt/usr/lib
    } else {
        target.path = /usr/lib
    }
    INSTALLS += target
}
