######################################################################
# Automatically generated by qmake (3.0) ?? 2? 4 17:49:37 2017
######################################################################

QT += dtkgui dtkwidget dtkwm
TEMPLATE = app
TARGET = deepin-screen-recorder
INCLUDEPATH += .

CONFIG += link_pkgconfig
CONFIG += c++11
PKGCONFIG += xcb xcb-util
RESOURCES = deepin-screen-recorder.qrc \
    src/widgets/resources.qrc

# Input
HEADERS += src/main_window.h src/record_process.h src/settings.h src/utils.h src/record_button.h src/record_option_panel.h src/countdown_tooltip.h src/constant.h src/event_monitor.h src/start_tooltip.h src/button_feedback.h src/process_tree.h \
    src/camera_process.h \
    src/show_buttons.h \
    src/keydefine.h   \
    src/utils/audioutils.h \
    src/voice_record_process.h \
    src/menucontroller/menucontroller.h \
    src/utils/screenutils.h \
    src/utils/baseutils.h \
    src/utils/configsettings.h \
    src/utils/shortcut.h \
    src/utils/tempfile.h \
    src/utils/calculaterect.h \
    src/utils/saveutils.h \
    src/utils/shapesutils.h \
    src/widgets/savetips.h \
    src/widgets/fontsizewidget.h \
    src/widgets/colorbutton.h \
    src/widgets/zoomIndicator.h \
    src/widgets/majtoolbar.h \
    src/widgets/textedit.h \
    src/widgets/bigcolorbutton.h \
    src/widgets/toptips.h \
    src/widgets/toolbar.h \
    src/widgets/savebutton.h \
    src/widgets/textbutton.h \
    src/widgets/shapeswidget.h \
    src/widgets/toolbutton.h \
    src/widgets/subtoolbar.h \
    src/widgets/maintoolwidget.h \
    src/widgets/subtoolwidget.h \
    src/widgets/keybuttonwidget.h \
    src/widgets/sidebar.h \
    src/widgets/shottoolwidget.h \
    src/widgets/colortoolwidget.h \
    src/dbusinterface/dbuszone.h \
    src/dbusinterface/dbuscontrolcenter.h \
    src/dbusinterface/dbusnotify.h \
    src/dbusinterface/dbussoundeffect.h \
    src/dbusservice/dbusscreenshotservice.h \
    src/dbusservice/dbusscreenshot.h \
    src/widgets/camerawidget.h \
    src/utils/dbusutils.h \
    src/screenshot.h
SOURCES += src/main.cpp src/main_window.cpp src/record_process.cpp src/settings.cpp src/utils.cpp src/record_button.cpp src/record_option_panel.cpp src/countdown_tooltip.cpp src/constant.cpp src/event_monitor.cpp src/start_tooltip.cpp src/button_feedback.cpp src/process_tree.cpp \
    src/camera_process.cpp \
    src/show_buttons.cpp  \
    src/utils/audioutils.cpp \
    src/voice_record_process.cpp \
    src/menucontroller/menucontroller.cpp \
    src/utils/shapesutils.cpp \
    src/utils/tempfile.cpp \
    src/utils/calculaterect.cpp \
    src/utils/shortcut.cpp \
    src/utils/configsettings.cpp \
    src/utils/screenutils.cpp \
    src/utils/baseutils.cpp \
    src/widgets/savebutton.cpp \
    src/widgets/toptips.cpp \
    src/widgets/shapeswidget.cpp \
    src/widgets/textbutton.cpp \
    src/widgets/colorbutton.cpp \
    src/widgets/fontsizewidget.cpp \
    src/widgets/textedit.cpp \
    src/widgets/bigcolorbutton.cpp \
    src/widgets/zoomIndicator.cpp \
    src/widgets/majtoolbar.cpp \
    src/widgets/subtoolbar.cpp \
    src/widgets/savetips.cpp \
    src/widgets/toolbar.cpp \
    src/widgets/maintoolwidget.cpp \
    src/widgets/subtoolwidget.cpp \
    src/widgets/keybuttonwidget.cpp \
    src/widgets/sidebar.cpp \
    src/widgets/shottoolwidget.cpp \
    src/widgets/colortoolwidget.cpp \
    src/dbusinterface/dbusnotify.cpp \
    src/dbusinterface/dbuszone.cpp \
    src/dbusinterface/dbuscontrolcenter.cpp \
    src/dbusinterface/dbussoundeffect.cpp \
    src/dbusservice/dbusscreenshotservice.cpp \
    src/dbusservice/dbusscreenshot.cpp \
    src/widgets/camerawidget.cpp \
    src/utils/dbusutils.cpp \
    src/screenshot.cpp

QT += core
QT += widgets
QT += gui
QT += network
QT += x11extras
QT += dbus
QT += multimedia
QT += multimediawidgets
LIBS += -lX11 -lXext -lXtst -ldtkwm
LIBS += -L"libprocps" -lprocps

QMAKE_CXXFLAGS += -g

isEmpty(PREFIX){
    PREFIX = /usr
}

isEmpty(BINDIR):BINDIR=/usr/bin
isEmpty(ICONDIR):ICONDIR=/usr/share/icons/hicolor/scalable/apps
isEmpty(APPDIR):APPDIR=/usr/share/applications
isEmpty(DSRDIR):DSRDIR=/usr/share/deepin-screen-recorder
isEmpty(DOCDIR):DOCDIR=/usr/share/dman/deepin-screen-recorder

target.path = $$INSTROOT$$BINDIR
icon.path = $$INSTROOT$$ICONDIR
desktop.path = $$INSTROOT$$APPDIR
translations.path = $$INSTROOT$$DSRDIR/translations
manual.path = $$INSTROOT$$DOCDIR
shotShell.path = $$INSTROOT$$BINDIR

#icon.files = image/deepin-screen-recorder.svg deepin-screenshot.svg
#desktop.files = deepin-screen-recorder.desktop deepin-screenshot.desktop
icon.files = image/deepin-screen-recorder.svg
desktop.files = deepin-screen-recorder.desktop
manual.files = manual/*
shotShell.files = deepin-screenshot

dbus_service.files = $$PWD/com.deepin.ScreenRecorder.service $$PWD/com.deepin.Screenshot.service
dbus_service.path = $$PREFIX/share/dbus-1/services

#INSTALLS += target icon desktop manual dbus_service shotShell
INSTALLS += target icon desktop manual dbus_service

isEmpty(TRANSLATIONS) {
     include(translations.pri)
}

TRANSLATIONS_COMPILED = $$TRANSLATIONS
TRANSLATIONS_COMPILED ~= s/\.ts/.qm/g

translations.files = $$TRANSLATIONS_COMPILED
INSTALLS += translations
CONFIG *= update_translations release_translations

CONFIG(update_translations) {
    isEmpty(lupdate):lupdate=lupdate
    system($$lupdate -no-obsolete -locations none $$_PRO_FILE_)
}
CONFIG(release_translations) {
    isEmpty(lrelease):lrelease=lrelease
    system($$lrelease $$_PRO_FILE_)
}

DSR_LANG_PATH += $$DSRDIR/translations
DEFINES += "DSR_LANG_PATH=\\\"$$DSR_LANG_PATH\\\""

DISTFILES += \
    image/newUI/focus/close-focus.svg
