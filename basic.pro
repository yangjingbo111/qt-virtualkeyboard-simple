TEMPLATE = app
TARGET = basic
QT += qml quick
SOURCES += main.cpp

static {
    QTPLUGIN += qtvirtualkeyboardplugin
}

qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


RESOURCES += \
    demo.qrc

OTHER_FILES += \
    Basic.qml \
    basic-b2qt.qml \
    content/TextField.qml \



