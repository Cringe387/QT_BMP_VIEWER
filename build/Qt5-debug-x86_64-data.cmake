########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND qt_COMPONENT_NAMES Qt5::Core Qt5::WinMain Qt5::LinguistTools Qt5::Gui Qt5::QSQLiteDriverPlugin Qt5::QPSQLDriverPlugin Qt5::Network Qt5::Sql Qt5::Test Qt5::Concurrent Qt5::Xml Qt5::QM3uPlaylistPlugin Qt5::AudioCaptureServicePlugin Qt5::DSServicePlugin Qt5::QWindowsAudioPlugin Qt5::EventDispatcherSupport Qt5::FontDatabaseSupport Qt5::ThemeSupport Qt5::AccessibilitySupport Qt5::Widgets Qt5::WindowsUIAutomationSupport Qt5::OpenGL Qt5::OpenGLExtensions Qt5::Qml Qt5::QuickTest Qt5::Multimedia Qt5::PrintSupport Qt5::QWindowsIntegrationPlugin Qt5::QWindowsVistaStylePlugin Qt5::QmlModels Qt5::QmlImportScanner Qt5::QmlWorkerScript Qt5::UiPlugin Qt5::Help Qt5::MultimediaWidgets Qt5::Quick Qt5::UiTools Qt5::Designer Qt5::QuickWidgets Qt5::QuickShapes Qt5::QuickControls2 Qt5::QuickTemplates2 Qt5::MultimediaQuick)
list(REMOVE_DUPLICATES qt_COMPONENT_NAMES)
if(DEFINED qt_FIND_DEPENDENCY_NAMES)
  list(APPEND qt_FIND_DEPENDENCY_NAMES OpenSSL PCRE2 double-conversion freetype JPEG PNG ZLIB SQLite3 PostgreSQL OpenAL opengl_system zstd md4c)
  list(REMOVE_DUPLICATES qt_FIND_DEPENDENCY_NAMES)
else()
  set(qt_FIND_DEPENDENCY_NAMES OpenSSL PCRE2 double-conversion freetype JPEG PNG ZLIB SQLite3 PostgreSQL OpenAL opengl_system zstd md4c)
endif()
set(OpenSSL_FIND_MODE "NO_MODULE")
set(PCRE2_FIND_MODE "NO_MODULE")
set(double-conversion_FIND_MODE "NO_MODULE")
set(freetype_FIND_MODE "NO_MODULE")
set(JPEG_FIND_MODE "NO_MODULE")
set(PNG_FIND_MODE "NO_MODULE")
set(ZLIB_FIND_MODE "NO_MODULE")
set(SQLite3_FIND_MODE "NO_MODULE")
set(PostgreSQL_FIND_MODE "NO_MODULE")
set(OpenAL_FIND_MODE "NO_MODULE")
set(opengl_system_FIND_MODE "NO_MODULE")
set(zstd_FIND_MODE "NO_MODULE")
set(md4c_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(qt_PACKAGE_FOLDER_DEBUG "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p")
set(qt_BUILD_MODULES_PATHS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt5Core/conan_qt_core_extras.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt5Core/conan_qt_qt5_coreprivate.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt5Core/Qt5CoreMacros.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt5Gui/conan_qt_qt5_guiprivate.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt5Widgets/conan_qt_qt5_widgetsprivate.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt5Widgets/Qt5WidgetsMacros.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt5Qml/conan_qt_qt5_qmlprivate.cmake"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt5LinguistTools/Qt5LinguistToolsMacros.cmake")


set(qt_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtMultimediaQuick"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtQuickTemplates2"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtQuickControls2"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtQuickShapes"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtQuickWidgets"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtDesigner"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtUiTools"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtQuick"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtMultimediaWidgets"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtHelp"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtUiPlugin"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtQmlWorkerScript"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtQmlModels"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtPrintSupport"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtMultimedia"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtQuickTest"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtQml"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtOpenGLExtensions"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtOpenGL"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtWindowsUIAutomationSupport"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtWidgets"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtAccessibilitySupport"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtThemeSupport"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtFontDatabaseSupport"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtEventDispatcherSupport"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtXml"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtConcurrent"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtTest"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtSql"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtNetwork"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtGui"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtCore"
			"${qt_PACKAGE_FOLDER_DEBUG}/bin/archdatadir/mkspecs/win32-msvc")
set(qt_RES_DIRS_DEBUG )
set(qt_DEFINITIONS_DEBUG "-DQT_MULTIMEDIAQUICK_LIB"
			"-DQT_QUICKTEMPLATES2_LIB"
			"-DQT_QUICKCONTROLS2_LIB"
			"-DQT_QUICKSHAPES_LIB"
			"-DQT_QUICKWIDGETS_LIB"
			"-DQT_DESIGNER_LIB"
			"-DQT_UITOOLS_LIB"
			"-DQT_QUICK_LIB"
			"-DQT_MULTIMEDIAWIDGETS_LIB"
			"-DQT_HELP_LIB"
			"-DQT_UIPLUGIN_LIB"
			"-DQT_QMLWORKERSCRIPT_LIB"
			"-DQT_QMLMODELS_LIB"
			"-DQT_PRINT_SUPPORT_LIB"
			"-DQT_MULTIMEDIA_LIB"
			"-DQT_QUICKTEST_LIB"
			"-DQT_QML_LIB"
			"-DQT_OPENGLEXTENSIONS_LIB"
			"-DQT_OPENGL_LIB"
			"-DQT_WINDOWSUIAUTOMATION_SUPPORT_LIB"
			"-DQT_WIDGETS_LIB"
			"-DQT_ACCESSIBILITY_SUPPORT_LIB"
			"-DQT_THEME_SUPPORT_LIB"
			"-DQT_FONTDATABASE_SUPPORT_LIB"
			"-DQT_EVENTDISPATCHER_SUPPORT_LIB"
			"-DQT_XML_LIB"
			"-DQT_CONCURRENT_LIB"
			"-DQT_TESTLIB_LIB"
			"-DQT_SQL_LIB"
			"-DQT_NETWORK_LIB"
			"-DQT_GUI_LIB"
			"-DQT_CORE_LIB")
set(qt_SHARED_LINK_FLAGS_DEBUG )
set(qt_EXE_LINK_FLAGS_DEBUG )
set(qt_OBJECTS_DEBUG )
set(qt_COMPILE_DEFINITIONS_DEBUG "QT_MULTIMEDIAQUICK_LIB"
			"QT_QUICKTEMPLATES2_LIB"
			"QT_QUICKCONTROLS2_LIB"
			"QT_QUICKSHAPES_LIB"
			"QT_QUICKWIDGETS_LIB"
			"QT_DESIGNER_LIB"
			"QT_UITOOLS_LIB"
			"QT_QUICK_LIB"
			"QT_MULTIMEDIAWIDGETS_LIB"
			"QT_HELP_LIB"
			"QT_UIPLUGIN_LIB"
			"QT_QMLWORKERSCRIPT_LIB"
			"QT_QMLMODELS_LIB"
			"QT_PRINT_SUPPORT_LIB"
			"QT_MULTIMEDIA_LIB"
			"QT_QUICKTEST_LIB"
			"QT_QML_LIB"
			"QT_OPENGLEXTENSIONS_LIB"
			"QT_OPENGL_LIB"
			"QT_WINDOWSUIAUTOMATION_SUPPORT_LIB"
			"QT_WIDGETS_LIB"
			"QT_ACCESSIBILITY_SUPPORT_LIB"
			"QT_THEME_SUPPORT_LIB"
			"QT_FONTDATABASE_SUPPORT_LIB"
			"QT_EVENTDISPATCHER_SUPPORT_LIB"
			"QT_XML_LIB"
			"QT_CONCURRENT_LIB"
			"QT_TESTLIB_LIB"
			"QT_SQL_LIB"
			"QT_NETWORK_LIB"
			"QT_GUI_LIB"
			"QT_CORE_LIB")
set(qt_COMPILE_OPTIONS_C_DEBUG )
set(qt_COMPILE_OPTIONS_CXX_DEBUG )
set(qt_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib"
			"${qt_PACKAGE_FOLDER_DEBUG}/bin/archdatadir/plugins/styles"
			"${qt_PACKAGE_FOLDER_DEBUG}/bin/archdatadir/plugins/platforms"
			"${qt_PACKAGE_FOLDER_DEBUG}/bin/archdatadir/plugins/audio"
			"${qt_PACKAGE_FOLDER_DEBUG}/bin/archdatadir/plugins/mediaservice"
			"${qt_PACKAGE_FOLDER_DEBUG}/bin/archdatadir/plugins/playlistformats"
			"${qt_PACKAGE_FOLDER_DEBUG}/bin/archdatadir/plugins/sqldrivers")
set(qt_BIN_DIRS_DEBUG )
set(qt_LIBRARY_TYPE_DEBUG STATIC)
set(qt_IS_HOST_WINDOWS_DEBUG 1)
set(qt_LIBS_DEBUG Qt5MultimediaQuickd Qt5QuickTemplates2d Qt5QuickControls2d Qt5QuickShapesd Qt5QuickWidgetsd Qt5Designerd Qt5UiToolsd Qt5Quickd Qt5MultimediaWidgetsd Qt5Helpd Qt5QmlWorkerScriptd Qt5QmlModelsd qwindowsvistastyled qwindowsd Qt5PrintSupportd Qt5Multimediad Qt5QuickTestd Qt5Qmld Qt5OpenGLExtensionsd Qt5OpenGLd Qt5WindowsUIAutomationSupportd Qt5Widgetsd Qt5AccessibilitySupportd Qt5ThemeSupportd Qt5FontDatabaseSupportd Qt5EventDispatcherSupportd qtaudio_windowsd dsengined qtmedia_audioengined qtmultimedia_m3ud Qt5Xmld Qt5Concurrentd Qt5Testd Qt5Sqld Qt5Networkd qsqlpsqld qsqlited Qt5Guid qtmaind Qt5Cored)
set(qt_SYSTEM_LIBS_DEBUG advapi32 dwmapi gdi32 imm32 ole32 oleaut32 shell32 shlwapi user32 winmm winspool wtsapi32 uxtheme dnsapi iphlpapi version netapi32 userenv ws2_32)
set(qt_FRAMEWORK_DIRS_DEBUG )
set(qt_FRAMEWORKS_DEBUG )
set(qt_BUILD_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt5Qml"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt5Widgets"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt5Gui"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt5LinguistTools"
			"${qt_PACKAGE_FOLDER_DEBUG}/bin/archdatadir/bin"
			"${qt_PACKAGE_FOLDER_DEBUG}/lib/cmake/Qt5Core")
set(qt_NO_SONAME_MODE_DEBUG FALSE)


# COMPOUND VARIABLES
set(qt_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_COMPILE_OPTIONS_C_DEBUG}>")
set(qt_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_EXE_LINK_FLAGS_DEBUG}>")


set(qt_COMPONENTS_DEBUG Qt5::Core Qt5::WinMain Qt5::LinguistTools Qt5::Gui Qt5::QSQLiteDriverPlugin Qt5::QPSQLDriverPlugin Qt5::Network Qt5::Sql Qt5::Test Qt5::Concurrent Qt5::Xml Qt5::QM3uPlaylistPlugin Qt5::AudioCaptureServicePlugin Qt5::DSServicePlugin Qt5::QWindowsAudioPlugin Qt5::EventDispatcherSupport Qt5::FontDatabaseSupport Qt5::ThemeSupport Qt5::AccessibilitySupport Qt5::Widgets Qt5::WindowsUIAutomationSupport Qt5::OpenGL Qt5::OpenGLExtensions Qt5::Qml Qt5::QuickTest Qt5::Multimedia Qt5::PrintSupport Qt5::QWindowsIntegrationPlugin Qt5::QWindowsVistaStylePlugin Qt5::QmlModels Qt5::QmlImportScanner Qt5::QmlWorkerScript Qt5::UiPlugin Qt5::Help Qt5::MultimediaWidgets Qt5::Quick Qt5::UiTools Qt5::Designer Qt5::QuickWidgets Qt5::QuickShapes Qt5::QuickControls2 Qt5::QuickTemplates2 Qt5::MultimediaQuick)
########### COMPONENT Qt5::MultimediaQuick VARIABLES ############################################

set(qt_Qt5_MultimediaQuick_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtMultimediaQuick")
set(qt_Qt5_MultimediaQuick_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_MultimediaQuick_BIN_DIRS_DEBUG )
set(qt_Qt5_MultimediaQuick_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_MultimediaQuick_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_MultimediaQuick_RES_DIRS_DEBUG )
set(qt_Qt5_MultimediaQuick_DEFINITIONS_DEBUG "-DQT_MULTIMEDIAQUICK_LIB")
set(qt_Qt5_MultimediaQuick_OBJECTS_DEBUG )
set(qt_Qt5_MultimediaQuick_COMPILE_DEFINITIONS_DEBUG "QT_MULTIMEDIAQUICK_LIB")
set(qt_Qt5_MultimediaQuick_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_MultimediaQuick_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_MultimediaQuick_LIBS_DEBUG Qt5MultimediaQuickd)
set(qt_Qt5_MultimediaQuick_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_MultimediaQuick_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_MultimediaQuick_FRAMEWORKS_DEBUG )
set(qt_Qt5_MultimediaQuick_DEPENDENCIES_DEBUG Qt5::Multimedia Qt5::Quick Qt5::Core)
set(qt_Qt5_MultimediaQuick_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_MultimediaQuick_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_MultimediaQuick_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_MultimediaQuick_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_MultimediaQuick_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_MultimediaQuick_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_MultimediaQuick_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_MultimediaQuick_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_MultimediaQuick_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_MultimediaQuick_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::QuickTemplates2 VARIABLES ############################################

set(qt_Qt5_QuickTemplates2_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtQuickTemplates2")
set(qt_Qt5_QuickTemplates2_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_QuickTemplates2_BIN_DIRS_DEBUG )
set(qt_Qt5_QuickTemplates2_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_QuickTemplates2_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_QuickTemplates2_RES_DIRS_DEBUG )
set(qt_Qt5_QuickTemplates2_DEFINITIONS_DEBUG "-DQT_QUICKTEMPLATES2_LIB")
set(qt_Qt5_QuickTemplates2_OBJECTS_DEBUG )
set(qt_Qt5_QuickTemplates2_COMPILE_DEFINITIONS_DEBUG "QT_QUICKTEMPLATES2_LIB")
set(qt_Qt5_QuickTemplates2_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_QuickTemplates2_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_QuickTemplates2_LIBS_DEBUG Qt5QuickTemplates2d)
set(qt_Qt5_QuickTemplates2_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_QuickTemplates2_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_QuickTemplates2_FRAMEWORKS_DEBUG )
set(qt_Qt5_QuickTemplates2_DEPENDENCIES_DEBUG Qt5::Gui Qt5::Quick Qt5::Core)
set(qt_Qt5_QuickTemplates2_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_QuickTemplates2_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_QuickTemplates2_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_QuickTemplates2_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_QuickTemplates2_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_QuickTemplates2_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_QuickTemplates2_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_QuickTemplates2_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_QuickTemplates2_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_QuickTemplates2_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::QuickControls2 VARIABLES ############################################

set(qt_Qt5_QuickControls2_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtQuickControls2")
set(qt_Qt5_QuickControls2_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_QuickControls2_BIN_DIRS_DEBUG )
set(qt_Qt5_QuickControls2_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_QuickControls2_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_QuickControls2_RES_DIRS_DEBUG )
set(qt_Qt5_QuickControls2_DEFINITIONS_DEBUG "-DQT_QUICKCONTROLS2_LIB")
set(qt_Qt5_QuickControls2_OBJECTS_DEBUG )
set(qt_Qt5_QuickControls2_COMPILE_DEFINITIONS_DEBUG "QT_QUICKCONTROLS2_LIB")
set(qt_Qt5_QuickControls2_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_QuickControls2_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_QuickControls2_LIBS_DEBUG Qt5QuickControls2d)
set(qt_Qt5_QuickControls2_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_QuickControls2_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_QuickControls2_FRAMEWORKS_DEBUG )
set(qt_Qt5_QuickControls2_DEPENDENCIES_DEBUG Qt5::Gui Qt5::Quick Qt5::Core)
set(qt_Qt5_QuickControls2_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_QuickControls2_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_QuickControls2_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_QuickControls2_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_QuickControls2_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_QuickControls2_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_QuickControls2_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_QuickControls2_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_QuickControls2_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_QuickControls2_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::QuickShapes VARIABLES ############################################

set(qt_Qt5_QuickShapes_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtQuickShapes")
set(qt_Qt5_QuickShapes_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_QuickShapes_BIN_DIRS_DEBUG )
set(qt_Qt5_QuickShapes_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_QuickShapes_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_QuickShapes_RES_DIRS_DEBUG )
set(qt_Qt5_QuickShapes_DEFINITIONS_DEBUG "-DQT_QUICKSHAPES_LIB")
set(qt_Qt5_QuickShapes_OBJECTS_DEBUG )
set(qt_Qt5_QuickShapes_COMPILE_DEFINITIONS_DEBUG "QT_QUICKSHAPES_LIB")
set(qt_Qt5_QuickShapes_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_QuickShapes_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_QuickShapes_LIBS_DEBUG Qt5QuickShapesd)
set(qt_Qt5_QuickShapes_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_QuickShapes_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_QuickShapes_FRAMEWORKS_DEBUG )
set(qt_Qt5_QuickShapes_DEPENDENCIES_DEBUG Qt5::Gui Qt5::Qml Qt5::Quick Qt5::Core)
set(qt_Qt5_QuickShapes_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_QuickShapes_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_QuickShapes_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_QuickShapes_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_QuickShapes_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_QuickShapes_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_QuickShapes_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_QuickShapes_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_QuickShapes_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_QuickShapes_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::QuickWidgets VARIABLES ############################################

set(qt_Qt5_QuickWidgets_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtQuickWidgets")
set(qt_Qt5_QuickWidgets_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_QuickWidgets_BIN_DIRS_DEBUG )
set(qt_Qt5_QuickWidgets_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_QuickWidgets_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_QuickWidgets_RES_DIRS_DEBUG )
set(qt_Qt5_QuickWidgets_DEFINITIONS_DEBUG "-DQT_QUICKWIDGETS_LIB")
set(qt_Qt5_QuickWidgets_OBJECTS_DEBUG )
set(qt_Qt5_QuickWidgets_COMPILE_DEFINITIONS_DEBUG "QT_QUICKWIDGETS_LIB")
set(qt_Qt5_QuickWidgets_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_QuickWidgets_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_QuickWidgets_LIBS_DEBUG Qt5QuickWidgetsd)
set(qt_Qt5_QuickWidgets_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_QuickWidgets_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_QuickWidgets_FRAMEWORKS_DEBUG )
set(qt_Qt5_QuickWidgets_DEPENDENCIES_DEBUG Qt5::Gui Qt5::Qml Qt5::Quick Qt5::Widgets Qt5::Core)
set(qt_Qt5_QuickWidgets_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_QuickWidgets_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_QuickWidgets_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_QuickWidgets_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_QuickWidgets_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_QuickWidgets_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_QuickWidgets_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_QuickWidgets_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_QuickWidgets_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_QuickWidgets_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::Designer VARIABLES ############################################

set(qt_Qt5_Designer_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtDesigner")
set(qt_Qt5_Designer_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_Designer_BIN_DIRS_DEBUG )
set(qt_Qt5_Designer_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_Designer_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_Designer_RES_DIRS_DEBUG )
set(qt_Qt5_Designer_DEFINITIONS_DEBUG "-DQT_DESIGNER_LIB")
set(qt_Qt5_Designer_OBJECTS_DEBUG )
set(qt_Qt5_Designer_COMPILE_DEFINITIONS_DEBUG "QT_DESIGNER_LIB")
set(qt_Qt5_Designer_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_Designer_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_Designer_LIBS_DEBUG Qt5Designerd)
set(qt_Qt5_Designer_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_Designer_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_Designer_FRAMEWORKS_DEBUG )
set(qt_Qt5_Designer_DEPENDENCIES_DEBUG Qt5::Gui Qt5::UiPlugin Qt5::Widgets Qt5::Xml Qt5::Core)
set(qt_Qt5_Designer_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_Designer_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_Designer_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Designer_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Designer_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Designer_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Designer_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_Designer_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Designer_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Designer_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::UiTools VARIABLES ############################################

set(qt_Qt5_UiTools_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtUiTools")
set(qt_Qt5_UiTools_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_UiTools_BIN_DIRS_DEBUG )
set(qt_Qt5_UiTools_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_UiTools_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_UiTools_RES_DIRS_DEBUG )
set(qt_Qt5_UiTools_DEFINITIONS_DEBUG "-DQT_UITOOLS_LIB")
set(qt_Qt5_UiTools_OBJECTS_DEBUG )
set(qt_Qt5_UiTools_COMPILE_DEFINITIONS_DEBUG "QT_UITOOLS_LIB")
set(qt_Qt5_UiTools_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_UiTools_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_UiTools_LIBS_DEBUG Qt5UiToolsd)
set(qt_Qt5_UiTools_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_UiTools_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_UiTools_FRAMEWORKS_DEBUG )
set(qt_Qt5_UiTools_DEPENDENCIES_DEBUG Qt5::UiPlugin Qt5::Gui Qt5::Widgets Qt5::Core)
set(qt_Qt5_UiTools_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_UiTools_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_UiTools_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_UiTools_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_UiTools_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_UiTools_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_UiTools_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_UiTools_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_UiTools_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_UiTools_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::Quick VARIABLES ############################################

set(qt_Qt5_Quick_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtQuick")
set(qt_Qt5_Quick_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_Quick_BIN_DIRS_DEBUG )
set(qt_Qt5_Quick_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_Quick_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_Quick_RES_DIRS_DEBUG )
set(qt_Qt5_Quick_DEFINITIONS_DEBUG "-DQT_QUICK_LIB")
set(qt_Qt5_Quick_OBJECTS_DEBUG )
set(qt_Qt5_Quick_COMPILE_DEFINITIONS_DEBUG "QT_QUICK_LIB")
set(qt_Qt5_Quick_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_Quick_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_Quick_LIBS_DEBUG Qt5Quickd)
set(qt_Qt5_Quick_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_Quick_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_Quick_FRAMEWORKS_DEBUG )
set(qt_Qt5_Quick_DEPENDENCIES_DEBUG Qt5::Gui Qt5::Qml Qt5::QmlModels Qt5::Core)
set(qt_Qt5_Quick_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_Quick_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_Quick_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Quick_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Quick_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Quick_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Quick_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_Quick_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Quick_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Quick_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::MultimediaWidgets VARIABLES ############################################

set(qt_Qt5_MultimediaWidgets_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtMultimediaWidgets")
set(qt_Qt5_MultimediaWidgets_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_MultimediaWidgets_BIN_DIRS_DEBUG )
set(qt_Qt5_MultimediaWidgets_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_MultimediaWidgets_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_MultimediaWidgets_RES_DIRS_DEBUG )
set(qt_Qt5_MultimediaWidgets_DEFINITIONS_DEBUG "-DQT_MULTIMEDIAWIDGETS_LIB")
set(qt_Qt5_MultimediaWidgets_OBJECTS_DEBUG )
set(qt_Qt5_MultimediaWidgets_COMPILE_DEFINITIONS_DEBUG "QT_MULTIMEDIAWIDGETS_LIB")
set(qt_Qt5_MultimediaWidgets_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_MultimediaWidgets_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_MultimediaWidgets_LIBS_DEBUG Qt5MultimediaWidgetsd)
set(qt_Qt5_MultimediaWidgets_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_MultimediaWidgets_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_MultimediaWidgets_FRAMEWORKS_DEBUG )
set(qt_Qt5_MultimediaWidgets_DEPENDENCIES_DEBUG Qt5::Multimedia Qt5::Widgets Qt5::Gui Qt5::Core)
set(qt_Qt5_MultimediaWidgets_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_MultimediaWidgets_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_MultimediaWidgets_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_MultimediaWidgets_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_MultimediaWidgets_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_MultimediaWidgets_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_MultimediaWidgets_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_MultimediaWidgets_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_MultimediaWidgets_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_MultimediaWidgets_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::Help VARIABLES ############################################

set(qt_Qt5_Help_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtHelp")
set(qt_Qt5_Help_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_Help_BIN_DIRS_DEBUG )
set(qt_Qt5_Help_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_Help_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_Help_RES_DIRS_DEBUG )
set(qt_Qt5_Help_DEFINITIONS_DEBUG "-DQT_HELP_LIB")
set(qt_Qt5_Help_OBJECTS_DEBUG )
set(qt_Qt5_Help_COMPILE_DEFINITIONS_DEBUG "QT_HELP_LIB")
set(qt_Qt5_Help_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_Help_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_Help_LIBS_DEBUG Qt5Helpd)
set(qt_Qt5_Help_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_Help_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_Help_FRAMEWORKS_DEBUG )
set(qt_Qt5_Help_DEPENDENCIES_DEBUG Qt5::Gui Qt5::Sql Qt5::Widgets Qt5::Core)
set(qt_Qt5_Help_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_Help_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_Help_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Help_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Help_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Help_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Help_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_Help_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Help_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Help_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::UiPlugin VARIABLES ############################################

set(qt_Qt5_UiPlugin_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtUiPlugin")
set(qt_Qt5_UiPlugin_LIB_DIRS_DEBUG )
set(qt_Qt5_UiPlugin_BIN_DIRS_DEBUG )
set(qt_Qt5_UiPlugin_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_UiPlugin_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_UiPlugin_RES_DIRS_DEBUG )
set(qt_Qt5_UiPlugin_DEFINITIONS_DEBUG "-DQT_UIPLUGIN_LIB")
set(qt_Qt5_UiPlugin_OBJECTS_DEBUG )
set(qt_Qt5_UiPlugin_COMPILE_DEFINITIONS_DEBUG "QT_UIPLUGIN_LIB")
set(qt_Qt5_UiPlugin_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_UiPlugin_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_UiPlugin_LIBS_DEBUG )
set(qt_Qt5_UiPlugin_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_UiPlugin_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_UiPlugin_FRAMEWORKS_DEBUG )
set(qt_Qt5_UiPlugin_DEPENDENCIES_DEBUG Qt5::Gui Qt5::Widgets Qt5::Core)
set(qt_Qt5_UiPlugin_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_UiPlugin_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_UiPlugin_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_UiPlugin_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_UiPlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_UiPlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_UiPlugin_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_UiPlugin_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_UiPlugin_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_UiPlugin_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::QmlWorkerScript VARIABLES ############################################

set(qt_Qt5_QmlWorkerScript_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtQmlWorkerScript")
set(qt_Qt5_QmlWorkerScript_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_QmlWorkerScript_BIN_DIRS_DEBUG )
set(qt_Qt5_QmlWorkerScript_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_QmlWorkerScript_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_QmlWorkerScript_RES_DIRS_DEBUG )
set(qt_Qt5_QmlWorkerScript_DEFINITIONS_DEBUG "-DQT_QMLWORKERSCRIPT_LIB")
set(qt_Qt5_QmlWorkerScript_OBJECTS_DEBUG )
set(qt_Qt5_QmlWorkerScript_COMPILE_DEFINITIONS_DEBUG "QT_QMLWORKERSCRIPT_LIB")
set(qt_Qt5_QmlWorkerScript_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_QmlWorkerScript_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_QmlWorkerScript_LIBS_DEBUG Qt5QmlWorkerScriptd)
set(qt_Qt5_QmlWorkerScript_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_QmlWorkerScript_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_QmlWorkerScript_FRAMEWORKS_DEBUG )
set(qt_Qt5_QmlWorkerScript_DEPENDENCIES_DEBUG Qt5::Qml Qt5::Core)
set(qt_Qt5_QmlWorkerScript_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_QmlWorkerScript_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_QmlWorkerScript_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_QmlWorkerScript_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_QmlWorkerScript_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_QmlWorkerScript_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_QmlWorkerScript_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_QmlWorkerScript_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_QmlWorkerScript_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_QmlWorkerScript_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::QmlImportScanner VARIABLES ############################################

set(qt_Qt5_QmlImportScanner_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include")
set(qt_Qt5_QmlImportScanner_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_QmlImportScanner_BIN_DIRS_DEBUG )
set(qt_Qt5_QmlImportScanner_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_QmlImportScanner_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_QmlImportScanner_RES_DIRS_DEBUG )
set(qt_Qt5_QmlImportScanner_DEFINITIONS_DEBUG )
set(qt_Qt5_QmlImportScanner_OBJECTS_DEBUG )
set(qt_Qt5_QmlImportScanner_COMPILE_DEFINITIONS_DEBUG )
set(qt_Qt5_QmlImportScanner_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_QmlImportScanner_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_QmlImportScanner_LIBS_DEBUG )
set(qt_Qt5_QmlImportScanner_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_QmlImportScanner_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_QmlImportScanner_FRAMEWORKS_DEBUG )
set(qt_Qt5_QmlImportScanner_DEPENDENCIES_DEBUG Qt5::Qml)
set(qt_Qt5_QmlImportScanner_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_QmlImportScanner_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_QmlImportScanner_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_QmlImportScanner_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_QmlImportScanner_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_QmlImportScanner_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_QmlImportScanner_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_QmlImportScanner_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_QmlImportScanner_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_QmlImportScanner_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::QmlModels VARIABLES ############################################

set(qt_Qt5_QmlModels_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtQmlModels")
set(qt_Qt5_QmlModels_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_QmlModels_BIN_DIRS_DEBUG )
set(qt_Qt5_QmlModels_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_QmlModels_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_QmlModels_RES_DIRS_DEBUG )
set(qt_Qt5_QmlModels_DEFINITIONS_DEBUG "-DQT_QMLMODELS_LIB")
set(qt_Qt5_QmlModels_OBJECTS_DEBUG )
set(qt_Qt5_QmlModels_COMPILE_DEFINITIONS_DEBUG "QT_QMLMODELS_LIB")
set(qt_Qt5_QmlModels_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_QmlModels_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_QmlModels_LIBS_DEBUG Qt5QmlModelsd)
set(qt_Qt5_QmlModels_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_QmlModels_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_QmlModels_FRAMEWORKS_DEBUG )
set(qt_Qt5_QmlModels_DEPENDENCIES_DEBUG Qt5::Qml Qt5::Core)
set(qt_Qt5_QmlModels_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_QmlModels_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_QmlModels_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_QmlModels_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_QmlModels_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_QmlModels_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_QmlModels_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_QmlModels_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_QmlModels_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_QmlModels_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::QWindowsVistaStylePlugin VARIABLES ############################################

set(qt_Qt5_QWindowsVistaStylePlugin_INCLUDE_DIRS_DEBUG )
set(qt_Qt5_QWindowsVistaStylePlugin_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin/archdatadir/plugins/styles")
set(qt_Qt5_QWindowsVistaStylePlugin_BIN_DIRS_DEBUG )
set(qt_Qt5_QWindowsVistaStylePlugin_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_QWindowsVistaStylePlugin_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_QWindowsVistaStylePlugin_RES_DIRS_DEBUG )
set(qt_Qt5_QWindowsVistaStylePlugin_DEFINITIONS_DEBUG )
set(qt_Qt5_QWindowsVistaStylePlugin_OBJECTS_DEBUG )
set(qt_Qt5_QWindowsVistaStylePlugin_COMPILE_DEFINITIONS_DEBUG )
set(qt_Qt5_QWindowsVistaStylePlugin_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_QWindowsVistaStylePlugin_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_QWindowsVistaStylePlugin_LIBS_DEBUG qwindowsvistastyled)
set(qt_Qt5_QWindowsVistaStylePlugin_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_QWindowsVistaStylePlugin_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_QWindowsVistaStylePlugin_FRAMEWORKS_DEBUG )
set(qt_Qt5_QWindowsVistaStylePlugin_DEPENDENCIES_DEBUG Qt5::Core Qt5::Gui Qt5::EventDispatcherSupport Qt5::FontDatabaseSupport Qt5::ThemeSupport Qt5::AccessibilitySupport Qt5::WindowsUIAutomationSupport)
set(qt_Qt5_QWindowsVistaStylePlugin_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_QWindowsVistaStylePlugin_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_QWindowsVistaStylePlugin_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_QWindowsVistaStylePlugin_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_QWindowsVistaStylePlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_QWindowsVistaStylePlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_QWindowsVistaStylePlugin_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_QWindowsVistaStylePlugin_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_QWindowsVistaStylePlugin_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_QWindowsVistaStylePlugin_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::QWindowsIntegrationPlugin VARIABLES ############################################

set(qt_Qt5_QWindowsIntegrationPlugin_INCLUDE_DIRS_DEBUG )
set(qt_Qt5_QWindowsIntegrationPlugin_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin/archdatadir/plugins/platforms")
set(qt_Qt5_QWindowsIntegrationPlugin_BIN_DIRS_DEBUG )
set(qt_Qt5_QWindowsIntegrationPlugin_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_QWindowsIntegrationPlugin_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_QWindowsIntegrationPlugin_RES_DIRS_DEBUG )
set(qt_Qt5_QWindowsIntegrationPlugin_DEFINITIONS_DEBUG )
set(qt_Qt5_QWindowsIntegrationPlugin_OBJECTS_DEBUG )
set(qt_Qt5_QWindowsIntegrationPlugin_COMPILE_DEFINITIONS_DEBUG )
set(qt_Qt5_QWindowsIntegrationPlugin_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_QWindowsIntegrationPlugin_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_QWindowsIntegrationPlugin_LIBS_DEBUG qwindowsd)
set(qt_Qt5_QWindowsIntegrationPlugin_SYSTEM_LIBS_DEBUG advapi32 dwmapi gdi32 imm32 ole32 oleaut32 shell32 shlwapi user32 winmm winspool wtsapi32)
set(qt_Qt5_QWindowsIntegrationPlugin_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_QWindowsIntegrationPlugin_FRAMEWORKS_DEBUG )
set(qt_Qt5_QWindowsIntegrationPlugin_DEPENDENCIES_DEBUG Qt5::Core Qt5::Gui Qt5::EventDispatcherSupport Qt5::FontDatabaseSupport Qt5::ThemeSupport Qt5::AccessibilitySupport Qt5::WindowsUIAutomationSupport)
set(qt_Qt5_QWindowsIntegrationPlugin_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_QWindowsIntegrationPlugin_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_QWindowsIntegrationPlugin_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_QWindowsIntegrationPlugin_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_QWindowsIntegrationPlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_QWindowsIntegrationPlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_QWindowsIntegrationPlugin_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_QWindowsIntegrationPlugin_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_QWindowsIntegrationPlugin_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_QWindowsIntegrationPlugin_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::PrintSupport VARIABLES ############################################

set(qt_Qt5_PrintSupport_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtPrintSupport")
set(qt_Qt5_PrintSupport_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_PrintSupport_BIN_DIRS_DEBUG )
set(qt_Qt5_PrintSupport_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_PrintSupport_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_PrintSupport_RES_DIRS_DEBUG )
set(qt_Qt5_PrintSupport_DEFINITIONS_DEBUG "-DQT_PRINT_SUPPORT_LIB")
set(qt_Qt5_PrintSupport_OBJECTS_DEBUG )
set(qt_Qt5_PrintSupport_COMPILE_DEFINITIONS_DEBUG "QT_PRINT_SUPPORT_LIB")
set(qt_Qt5_PrintSupport_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_PrintSupport_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_PrintSupport_LIBS_DEBUG Qt5PrintSupportd)
set(qt_Qt5_PrintSupport_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_PrintSupport_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_PrintSupport_FRAMEWORKS_DEBUG )
set(qt_Qt5_PrintSupport_DEPENDENCIES_DEBUG Qt5::Gui Qt5::Widgets Qt5::Core)
set(qt_Qt5_PrintSupport_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_PrintSupport_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_PrintSupport_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_PrintSupport_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_PrintSupport_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_PrintSupport_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_PrintSupport_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_PrintSupport_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_PrintSupport_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_PrintSupport_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::Multimedia VARIABLES ############################################

set(qt_Qt5_Multimedia_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtMultimedia")
set(qt_Qt5_Multimedia_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_Multimedia_BIN_DIRS_DEBUG )
set(qt_Qt5_Multimedia_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_Multimedia_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_Multimedia_RES_DIRS_DEBUG )
set(qt_Qt5_Multimedia_DEFINITIONS_DEBUG "-DQT_MULTIMEDIA_LIB")
set(qt_Qt5_Multimedia_OBJECTS_DEBUG )
set(qt_Qt5_Multimedia_COMPILE_DEFINITIONS_DEBUG "QT_MULTIMEDIA_LIB")
set(qt_Qt5_Multimedia_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_Multimedia_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_Multimedia_LIBS_DEBUG Qt5Multimediad)
set(qt_Qt5_Multimedia_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_Multimedia_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_Multimedia_FRAMEWORKS_DEBUG )
set(qt_Qt5_Multimedia_DEPENDENCIES_DEBUG Qt5::Network Qt5::Gui OpenAL::OpenAL Qt5::Core)
set(qt_Qt5_Multimedia_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_Multimedia_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_Multimedia_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Multimedia_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Multimedia_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Multimedia_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Multimedia_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_Multimedia_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Multimedia_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Multimedia_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::QuickTest VARIABLES ############################################

set(qt_Qt5_QuickTest_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtQuickTest")
set(qt_Qt5_QuickTest_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_QuickTest_BIN_DIRS_DEBUG )
set(qt_Qt5_QuickTest_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_QuickTest_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_QuickTest_RES_DIRS_DEBUG )
set(qt_Qt5_QuickTest_DEFINITIONS_DEBUG "-DQT_QUICKTEST_LIB")
set(qt_Qt5_QuickTest_OBJECTS_DEBUG )
set(qt_Qt5_QuickTest_COMPILE_DEFINITIONS_DEBUG "QT_QUICKTEST_LIB")
set(qt_Qt5_QuickTest_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_QuickTest_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_QuickTest_LIBS_DEBUG Qt5QuickTestd)
set(qt_Qt5_QuickTest_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_QuickTest_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_QuickTest_FRAMEWORKS_DEBUG )
set(qt_Qt5_QuickTest_DEPENDENCIES_DEBUG Qt5::Test Qt5::Core)
set(qt_Qt5_QuickTest_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_QuickTest_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_QuickTest_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_QuickTest_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_QuickTest_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_QuickTest_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_QuickTest_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_QuickTest_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_QuickTest_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_QuickTest_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::Qml VARIABLES ############################################

set(qt_Qt5_Qml_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtQml")
set(qt_Qt5_Qml_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_Qml_BIN_DIRS_DEBUG )
set(qt_Qt5_Qml_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_Qml_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_Qml_RES_DIRS_DEBUG )
set(qt_Qt5_Qml_DEFINITIONS_DEBUG "-DQT_QML_LIB")
set(qt_Qt5_Qml_OBJECTS_DEBUG )
set(qt_Qt5_Qml_COMPILE_DEFINITIONS_DEBUG "QT_QML_LIB")
set(qt_Qt5_Qml_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_Qml_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_Qml_LIBS_DEBUG Qt5Qmld)
set(qt_Qt5_Qml_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_Qml_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_Qml_FRAMEWORKS_DEBUG )
set(qt_Qt5_Qml_DEPENDENCIES_DEBUG Qt5::Network Qt5::Core)
set(qt_Qt5_Qml_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_Qml_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_Qml_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Qml_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Qml_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Qml_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Qml_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_Qml_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Qml_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Qml_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::OpenGLExtensions VARIABLES ############################################

set(qt_Qt5_OpenGLExtensions_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtOpenGLExtensions")
set(qt_Qt5_OpenGLExtensions_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_OpenGLExtensions_BIN_DIRS_DEBUG )
set(qt_Qt5_OpenGLExtensions_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_OpenGLExtensions_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_OpenGLExtensions_RES_DIRS_DEBUG )
set(qt_Qt5_OpenGLExtensions_DEFINITIONS_DEBUG "-DQT_OPENGLEXTENSIONS_LIB")
set(qt_Qt5_OpenGLExtensions_OBJECTS_DEBUG )
set(qt_Qt5_OpenGLExtensions_COMPILE_DEFINITIONS_DEBUG "QT_OPENGLEXTENSIONS_LIB")
set(qt_Qt5_OpenGLExtensions_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_OpenGLExtensions_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_OpenGLExtensions_LIBS_DEBUG Qt5OpenGLExtensionsd)
set(qt_Qt5_OpenGLExtensions_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_OpenGLExtensions_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_OpenGLExtensions_FRAMEWORKS_DEBUG )
set(qt_Qt5_OpenGLExtensions_DEPENDENCIES_DEBUG Qt5::Gui Qt5::Core)
set(qt_Qt5_OpenGLExtensions_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_OpenGLExtensions_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_OpenGLExtensions_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_OpenGLExtensions_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_OpenGLExtensions_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_OpenGLExtensions_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_OpenGLExtensions_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_OpenGLExtensions_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_OpenGLExtensions_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_OpenGLExtensions_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::OpenGL VARIABLES ############################################

set(qt_Qt5_OpenGL_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtOpenGL")
set(qt_Qt5_OpenGL_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_OpenGL_BIN_DIRS_DEBUG )
set(qt_Qt5_OpenGL_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_OpenGL_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_OpenGL_RES_DIRS_DEBUG )
set(qt_Qt5_OpenGL_DEFINITIONS_DEBUG "-DQT_OPENGL_LIB")
set(qt_Qt5_OpenGL_OBJECTS_DEBUG )
set(qt_Qt5_OpenGL_COMPILE_DEFINITIONS_DEBUG "QT_OPENGL_LIB")
set(qt_Qt5_OpenGL_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_OpenGL_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_OpenGL_LIBS_DEBUG Qt5OpenGLd)
set(qt_Qt5_OpenGL_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_OpenGL_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_OpenGL_FRAMEWORKS_DEBUG )
set(qt_Qt5_OpenGL_DEPENDENCIES_DEBUG Qt5::Gui Qt5::Core)
set(qt_Qt5_OpenGL_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_OpenGL_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_OpenGL_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_OpenGL_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_OpenGL_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_OpenGL_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_OpenGL_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_OpenGL_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_OpenGL_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_OpenGL_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::WindowsUIAutomationSupport VARIABLES ############################################

set(qt_Qt5_WindowsUIAutomationSupport_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtWindowsUIAutomationSupport")
set(qt_Qt5_WindowsUIAutomationSupport_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_WindowsUIAutomationSupport_BIN_DIRS_DEBUG )
set(qt_Qt5_WindowsUIAutomationSupport_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_WindowsUIAutomationSupport_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_WindowsUIAutomationSupport_RES_DIRS_DEBUG )
set(qt_Qt5_WindowsUIAutomationSupport_DEFINITIONS_DEBUG "-DQT_WINDOWSUIAUTOMATION_SUPPORT_LIB")
set(qt_Qt5_WindowsUIAutomationSupport_OBJECTS_DEBUG )
set(qt_Qt5_WindowsUIAutomationSupport_COMPILE_DEFINITIONS_DEBUG "QT_WINDOWSUIAUTOMATION_SUPPORT_LIB")
set(qt_Qt5_WindowsUIAutomationSupport_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_WindowsUIAutomationSupport_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_WindowsUIAutomationSupport_LIBS_DEBUG Qt5WindowsUIAutomationSupportd)
set(qt_Qt5_WindowsUIAutomationSupport_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_WindowsUIAutomationSupport_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_WindowsUIAutomationSupport_FRAMEWORKS_DEBUG )
set(qt_Qt5_WindowsUIAutomationSupport_DEPENDENCIES_DEBUG Qt5::Core Qt5::Gui)
set(qt_Qt5_WindowsUIAutomationSupport_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_WindowsUIAutomationSupport_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_WindowsUIAutomationSupport_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_WindowsUIAutomationSupport_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_WindowsUIAutomationSupport_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_WindowsUIAutomationSupport_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_WindowsUIAutomationSupport_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_WindowsUIAutomationSupport_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_WindowsUIAutomationSupport_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_WindowsUIAutomationSupport_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::Widgets VARIABLES ############################################

set(qt_Qt5_Widgets_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtWidgets")
set(qt_Qt5_Widgets_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_Widgets_BIN_DIRS_DEBUG )
set(qt_Qt5_Widgets_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_Widgets_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_Widgets_RES_DIRS_DEBUG )
set(qt_Qt5_Widgets_DEFINITIONS_DEBUG "-DQT_WIDGETS_LIB")
set(qt_Qt5_Widgets_OBJECTS_DEBUG )
set(qt_Qt5_Widgets_COMPILE_DEFINITIONS_DEBUG "QT_WIDGETS_LIB")
set(qt_Qt5_Widgets_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_Widgets_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_Widgets_LIBS_DEBUG Qt5Widgetsd)
set(qt_Qt5_Widgets_SYSTEM_LIBS_DEBUG uxtheme dwmapi)
set(qt_Qt5_Widgets_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_Widgets_FRAMEWORKS_DEBUG )
set(qt_Qt5_Widgets_DEPENDENCIES_DEBUG Qt5::Gui Qt5::Core)
set(qt_Qt5_Widgets_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_Widgets_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_Widgets_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Widgets_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Widgets_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Widgets_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Widgets_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_Widgets_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Widgets_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Widgets_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::AccessibilitySupport VARIABLES ############################################

set(qt_Qt5_AccessibilitySupport_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtAccessibilitySupport")
set(qt_Qt5_AccessibilitySupport_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_AccessibilitySupport_BIN_DIRS_DEBUG )
set(qt_Qt5_AccessibilitySupport_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_AccessibilitySupport_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_AccessibilitySupport_RES_DIRS_DEBUG )
set(qt_Qt5_AccessibilitySupport_DEFINITIONS_DEBUG "-DQT_ACCESSIBILITY_SUPPORT_LIB")
set(qt_Qt5_AccessibilitySupport_OBJECTS_DEBUG )
set(qt_Qt5_AccessibilitySupport_COMPILE_DEFINITIONS_DEBUG "QT_ACCESSIBILITY_SUPPORT_LIB")
set(qt_Qt5_AccessibilitySupport_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_AccessibilitySupport_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_AccessibilitySupport_LIBS_DEBUG Qt5AccessibilitySupportd)
set(qt_Qt5_AccessibilitySupport_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_AccessibilitySupport_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_AccessibilitySupport_FRAMEWORKS_DEBUG )
set(qt_Qt5_AccessibilitySupport_DEPENDENCIES_DEBUG Qt5::Core Qt5::Gui)
set(qt_Qt5_AccessibilitySupport_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_AccessibilitySupport_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_AccessibilitySupport_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_AccessibilitySupport_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_AccessibilitySupport_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_AccessibilitySupport_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_AccessibilitySupport_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_AccessibilitySupport_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_AccessibilitySupport_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_AccessibilitySupport_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::ThemeSupport VARIABLES ############################################

set(qt_Qt5_ThemeSupport_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtThemeSupport")
set(qt_Qt5_ThemeSupport_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_ThemeSupport_BIN_DIRS_DEBUG )
set(qt_Qt5_ThemeSupport_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_ThemeSupport_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_ThemeSupport_RES_DIRS_DEBUG )
set(qt_Qt5_ThemeSupport_DEFINITIONS_DEBUG "-DQT_THEME_SUPPORT_LIB")
set(qt_Qt5_ThemeSupport_OBJECTS_DEBUG )
set(qt_Qt5_ThemeSupport_COMPILE_DEFINITIONS_DEBUG "QT_THEME_SUPPORT_LIB")
set(qt_Qt5_ThemeSupport_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_ThemeSupport_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_ThemeSupport_LIBS_DEBUG Qt5ThemeSupportd)
set(qt_Qt5_ThemeSupport_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_ThemeSupport_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_ThemeSupport_FRAMEWORKS_DEBUG )
set(qt_Qt5_ThemeSupport_DEPENDENCIES_DEBUG Qt5::Core Qt5::Gui)
set(qt_Qt5_ThemeSupport_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_ThemeSupport_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_ThemeSupport_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_ThemeSupport_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_ThemeSupport_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_ThemeSupport_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_ThemeSupport_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_ThemeSupport_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_ThemeSupport_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_ThemeSupport_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::FontDatabaseSupport VARIABLES ############################################

set(qt_Qt5_FontDatabaseSupport_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtFontDatabaseSupport")
set(qt_Qt5_FontDatabaseSupport_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_FontDatabaseSupport_BIN_DIRS_DEBUG )
set(qt_Qt5_FontDatabaseSupport_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_FontDatabaseSupport_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_FontDatabaseSupport_RES_DIRS_DEBUG )
set(qt_Qt5_FontDatabaseSupport_DEFINITIONS_DEBUG "-DQT_FONTDATABASE_SUPPORT_LIB")
set(qt_Qt5_FontDatabaseSupport_OBJECTS_DEBUG )
set(qt_Qt5_FontDatabaseSupport_COMPILE_DEFINITIONS_DEBUG "QT_FONTDATABASE_SUPPORT_LIB")
set(qt_Qt5_FontDatabaseSupport_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_FontDatabaseSupport_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_FontDatabaseSupport_LIBS_DEBUG Qt5FontDatabaseSupportd)
set(qt_Qt5_FontDatabaseSupport_SYSTEM_LIBS_DEBUG advapi32 ole32 user32 gdi32)
set(qt_Qt5_FontDatabaseSupport_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_FontDatabaseSupport_FRAMEWORKS_DEBUG )
set(qt_Qt5_FontDatabaseSupport_DEPENDENCIES_DEBUG Qt5::Core Qt5::Gui Freetype::Freetype)
set(qt_Qt5_FontDatabaseSupport_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_FontDatabaseSupport_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_FontDatabaseSupport_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_FontDatabaseSupport_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_FontDatabaseSupport_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_FontDatabaseSupport_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_FontDatabaseSupport_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_FontDatabaseSupport_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_FontDatabaseSupport_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_FontDatabaseSupport_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::EventDispatcherSupport VARIABLES ############################################

set(qt_Qt5_EventDispatcherSupport_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtEventDispatcherSupport")
set(qt_Qt5_EventDispatcherSupport_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_EventDispatcherSupport_BIN_DIRS_DEBUG )
set(qt_Qt5_EventDispatcherSupport_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_EventDispatcherSupport_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_EventDispatcherSupport_RES_DIRS_DEBUG )
set(qt_Qt5_EventDispatcherSupport_DEFINITIONS_DEBUG "-DQT_EVENTDISPATCHER_SUPPORT_LIB")
set(qt_Qt5_EventDispatcherSupport_OBJECTS_DEBUG )
set(qt_Qt5_EventDispatcherSupport_COMPILE_DEFINITIONS_DEBUG "QT_EVENTDISPATCHER_SUPPORT_LIB")
set(qt_Qt5_EventDispatcherSupport_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_EventDispatcherSupport_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_EventDispatcherSupport_LIBS_DEBUG Qt5EventDispatcherSupportd)
set(qt_Qt5_EventDispatcherSupport_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_EventDispatcherSupport_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_EventDispatcherSupport_FRAMEWORKS_DEBUG )
set(qt_Qt5_EventDispatcherSupport_DEPENDENCIES_DEBUG Qt5::Core Qt5::Gui)
set(qt_Qt5_EventDispatcherSupport_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_EventDispatcherSupport_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_EventDispatcherSupport_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_EventDispatcherSupport_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_EventDispatcherSupport_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_EventDispatcherSupport_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_EventDispatcherSupport_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_EventDispatcherSupport_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_EventDispatcherSupport_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_EventDispatcherSupport_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::QWindowsAudioPlugin VARIABLES ############################################

set(qt_Qt5_QWindowsAudioPlugin_INCLUDE_DIRS_DEBUG )
set(qt_Qt5_QWindowsAudioPlugin_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin/archdatadir/plugins/audio")
set(qt_Qt5_QWindowsAudioPlugin_BIN_DIRS_DEBUG )
set(qt_Qt5_QWindowsAudioPlugin_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_QWindowsAudioPlugin_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_QWindowsAudioPlugin_RES_DIRS_DEBUG )
set(qt_Qt5_QWindowsAudioPlugin_DEFINITIONS_DEBUG )
set(qt_Qt5_QWindowsAudioPlugin_OBJECTS_DEBUG )
set(qt_Qt5_QWindowsAudioPlugin_COMPILE_DEFINITIONS_DEBUG )
set(qt_Qt5_QWindowsAudioPlugin_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_QWindowsAudioPlugin_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_QWindowsAudioPlugin_LIBS_DEBUG qtaudio_windowsd)
set(qt_Qt5_QWindowsAudioPlugin_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_QWindowsAudioPlugin_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_QWindowsAudioPlugin_FRAMEWORKS_DEBUG )
set(qt_Qt5_QWindowsAudioPlugin_DEPENDENCIES_DEBUG Qt5::Core)
set(qt_Qt5_QWindowsAudioPlugin_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_QWindowsAudioPlugin_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_QWindowsAudioPlugin_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_QWindowsAudioPlugin_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_QWindowsAudioPlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_QWindowsAudioPlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_QWindowsAudioPlugin_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_QWindowsAudioPlugin_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_QWindowsAudioPlugin_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_QWindowsAudioPlugin_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::DSServicePlugin VARIABLES ############################################

set(qt_Qt5_DSServicePlugin_INCLUDE_DIRS_DEBUG )
set(qt_Qt5_DSServicePlugin_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin/archdatadir/plugins/mediaservice")
set(qt_Qt5_DSServicePlugin_BIN_DIRS_DEBUG )
set(qt_Qt5_DSServicePlugin_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_DSServicePlugin_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_DSServicePlugin_RES_DIRS_DEBUG )
set(qt_Qt5_DSServicePlugin_DEFINITIONS_DEBUG )
set(qt_Qt5_DSServicePlugin_OBJECTS_DEBUG )
set(qt_Qt5_DSServicePlugin_COMPILE_DEFINITIONS_DEBUG )
set(qt_Qt5_DSServicePlugin_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_DSServicePlugin_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_DSServicePlugin_LIBS_DEBUG dsengined)
set(qt_Qt5_DSServicePlugin_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_DSServicePlugin_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_DSServicePlugin_FRAMEWORKS_DEBUG )
set(qt_Qt5_DSServicePlugin_DEPENDENCIES_DEBUG Qt5::Core)
set(qt_Qt5_DSServicePlugin_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_DSServicePlugin_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_DSServicePlugin_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_DSServicePlugin_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_DSServicePlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_DSServicePlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_DSServicePlugin_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_DSServicePlugin_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_DSServicePlugin_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_DSServicePlugin_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::AudioCaptureServicePlugin VARIABLES ############################################

set(qt_Qt5_AudioCaptureServicePlugin_INCLUDE_DIRS_DEBUG )
set(qt_Qt5_AudioCaptureServicePlugin_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin/archdatadir/plugins/mediaservice")
set(qt_Qt5_AudioCaptureServicePlugin_BIN_DIRS_DEBUG )
set(qt_Qt5_AudioCaptureServicePlugin_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_AudioCaptureServicePlugin_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_AudioCaptureServicePlugin_RES_DIRS_DEBUG )
set(qt_Qt5_AudioCaptureServicePlugin_DEFINITIONS_DEBUG )
set(qt_Qt5_AudioCaptureServicePlugin_OBJECTS_DEBUG )
set(qt_Qt5_AudioCaptureServicePlugin_COMPILE_DEFINITIONS_DEBUG )
set(qt_Qt5_AudioCaptureServicePlugin_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_AudioCaptureServicePlugin_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_AudioCaptureServicePlugin_LIBS_DEBUG qtmedia_audioengined)
set(qt_Qt5_AudioCaptureServicePlugin_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_AudioCaptureServicePlugin_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_AudioCaptureServicePlugin_FRAMEWORKS_DEBUG )
set(qt_Qt5_AudioCaptureServicePlugin_DEPENDENCIES_DEBUG Qt5::Core)
set(qt_Qt5_AudioCaptureServicePlugin_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_AudioCaptureServicePlugin_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_AudioCaptureServicePlugin_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_AudioCaptureServicePlugin_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_AudioCaptureServicePlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_AudioCaptureServicePlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_AudioCaptureServicePlugin_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_AudioCaptureServicePlugin_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_AudioCaptureServicePlugin_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_AudioCaptureServicePlugin_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::QM3uPlaylistPlugin VARIABLES ############################################

set(qt_Qt5_QM3uPlaylistPlugin_INCLUDE_DIRS_DEBUG )
set(qt_Qt5_QM3uPlaylistPlugin_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin/archdatadir/plugins/playlistformats")
set(qt_Qt5_QM3uPlaylistPlugin_BIN_DIRS_DEBUG )
set(qt_Qt5_QM3uPlaylistPlugin_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_QM3uPlaylistPlugin_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_QM3uPlaylistPlugin_RES_DIRS_DEBUG )
set(qt_Qt5_QM3uPlaylistPlugin_DEFINITIONS_DEBUG )
set(qt_Qt5_QM3uPlaylistPlugin_OBJECTS_DEBUG )
set(qt_Qt5_QM3uPlaylistPlugin_COMPILE_DEFINITIONS_DEBUG )
set(qt_Qt5_QM3uPlaylistPlugin_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_QM3uPlaylistPlugin_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_QM3uPlaylistPlugin_LIBS_DEBUG qtmultimedia_m3ud)
set(qt_Qt5_QM3uPlaylistPlugin_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_QM3uPlaylistPlugin_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_QM3uPlaylistPlugin_FRAMEWORKS_DEBUG )
set(qt_Qt5_QM3uPlaylistPlugin_DEPENDENCIES_DEBUG Qt5::Core)
set(qt_Qt5_QM3uPlaylistPlugin_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_QM3uPlaylistPlugin_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_QM3uPlaylistPlugin_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_QM3uPlaylistPlugin_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_QM3uPlaylistPlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_QM3uPlaylistPlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_QM3uPlaylistPlugin_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_QM3uPlaylistPlugin_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_QM3uPlaylistPlugin_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_QM3uPlaylistPlugin_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::Xml VARIABLES ############################################

set(qt_Qt5_Xml_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtXml")
set(qt_Qt5_Xml_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_Xml_BIN_DIRS_DEBUG )
set(qt_Qt5_Xml_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_Xml_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_Xml_RES_DIRS_DEBUG )
set(qt_Qt5_Xml_DEFINITIONS_DEBUG "-DQT_XML_LIB")
set(qt_Qt5_Xml_OBJECTS_DEBUG )
set(qt_Qt5_Xml_COMPILE_DEFINITIONS_DEBUG "QT_XML_LIB")
set(qt_Qt5_Xml_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_Xml_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_Xml_LIBS_DEBUG Qt5Xmld)
set(qt_Qt5_Xml_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_Xml_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_Xml_FRAMEWORKS_DEBUG )
set(qt_Qt5_Xml_DEPENDENCIES_DEBUG Qt5::Core)
set(qt_Qt5_Xml_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_Xml_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_Xml_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Xml_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Xml_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Xml_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Xml_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_Xml_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Xml_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Xml_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::Concurrent VARIABLES ############################################

set(qt_Qt5_Concurrent_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtConcurrent")
set(qt_Qt5_Concurrent_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_Concurrent_BIN_DIRS_DEBUG )
set(qt_Qt5_Concurrent_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_Concurrent_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_Concurrent_RES_DIRS_DEBUG )
set(qt_Qt5_Concurrent_DEFINITIONS_DEBUG "-DQT_CONCURRENT_LIB")
set(qt_Qt5_Concurrent_OBJECTS_DEBUG )
set(qt_Qt5_Concurrent_COMPILE_DEFINITIONS_DEBUG "QT_CONCURRENT_LIB")
set(qt_Qt5_Concurrent_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_Concurrent_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_Concurrent_LIBS_DEBUG Qt5Concurrentd)
set(qt_Qt5_Concurrent_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_Concurrent_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_Concurrent_FRAMEWORKS_DEBUG )
set(qt_Qt5_Concurrent_DEPENDENCIES_DEBUG Qt5::Core)
set(qt_Qt5_Concurrent_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_Concurrent_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_Concurrent_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Concurrent_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Concurrent_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Concurrent_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Concurrent_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_Concurrent_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Concurrent_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Concurrent_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::Test VARIABLES ############################################

set(qt_Qt5_Test_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtTest")
set(qt_Qt5_Test_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_Test_BIN_DIRS_DEBUG )
set(qt_Qt5_Test_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_Test_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_Test_RES_DIRS_DEBUG )
set(qt_Qt5_Test_DEFINITIONS_DEBUG "-DQT_TESTLIB_LIB")
set(qt_Qt5_Test_OBJECTS_DEBUG )
set(qt_Qt5_Test_COMPILE_DEFINITIONS_DEBUG "QT_TESTLIB_LIB")
set(qt_Qt5_Test_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_Test_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_Test_LIBS_DEBUG Qt5Testd)
set(qt_Qt5_Test_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_Test_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_Test_FRAMEWORKS_DEBUG )
set(qt_Qt5_Test_DEPENDENCIES_DEBUG Qt5::Core)
set(qt_Qt5_Test_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_Test_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_Test_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Test_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Test_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Test_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Test_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_Test_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Test_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Test_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::Sql VARIABLES ############################################

set(qt_Qt5_Sql_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtSql")
set(qt_Qt5_Sql_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_Sql_BIN_DIRS_DEBUG )
set(qt_Qt5_Sql_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_Sql_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_Sql_RES_DIRS_DEBUG )
set(qt_Qt5_Sql_DEFINITIONS_DEBUG "-DQT_SQL_LIB")
set(qt_Qt5_Sql_OBJECTS_DEBUG )
set(qt_Qt5_Sql_COMPILE_DEFINITIONS_DEBUG "QT_SQL_LIB")
set(qt_Qt5_Sql_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_Sql_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_Sql_LIBS_DEBUG Qt5Sqld)
set(qt_Qt5_Sql_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_Sql_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_Sql_FRAMEWORKS_DEBUG )
set(qt_Qt5_Sql_DEPENDENCIES_DEBUG Qt5::Core)
set(qt_Qt5_Sql_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_Sql_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_Sql_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Sql_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Sql_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Sql_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Sql_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_Sql_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Sql_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Sql_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::Network VARIABLES ############################################

set(qt_Qt5_Network_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtNetwork")
set(qt_Qt5_Network_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_Network_BIN_DIRS_DEBUG )
set(qt_Qt5_Network_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_Network_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_Network_RES_DIRS_DEBUG )
set(qt_Qt5_Network_DEFINITIONS_DEBUG "-DQT_NETWORK_LIB")
set(qt_Qt5_Network_OBJECTS_DEBUG )
set(qt_Qt5_Network_COMPILE_DEFINITIONS_DEBUG "QT_NETWORK_LIB")
set(qt_Qt5_Network_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_Network_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_Network_LIBS_DEBUG Qt5Networkd)
set(qt_Qt5_Network_SYSTEM_LIBS_DEBUG dnsapi iphlpapi)
set(qt_Qt5_Network_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_Network_FRAMEWORKS_DEBUG )
set(qt_Qt5_Network_DEPENDENCIES_DEBUG openssl::openssl Qt5::Core)
set(qt_Qt5_Network_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_Network_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_Network_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Network_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Network_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Network_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Network_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_Network_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Network_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Network_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::QPSQLDriverPlugin VARIABLES ############################################

set(qt_Qt5_QPSQLDriverPlugin_INCLUDE_DIRS_DEBUG )
set(qt_Qt5_QPSQLDriverPlugin_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin/archdatadir/plugins/sqldrivers")
set(qt_Qt5_QPSQLDriverPlugin_BIN_DIRS_DEBUG )
set(qt_Qt5_QPSQLDriverPlugin_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_QPSQLDriverPlugin_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_QPSQLDriverPlugin_RES_DIRS_DEBUG )
set(qt_Qt5_QPSQLDriverPlugin_DEFINITIONS_DEBUG )
set(qt_Qt5_QPSQLDriverPlugin_OBJECTS_DEBUG )
set(qt_Qt5_QPSQLDriverPlugin_COMPILE_DEFINITIONS_DEBUG )
set(qt_Qt5_QPSQLDriverPlugin_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_QPSQLDriverPlugin_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_QPSQLDriverPlugin_LIBS_DEBUG qsqlpsqld)
set(qt_Qt5_QPSQLDriverPlugin_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_QPSQLDriverPlugin_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_QPSQLDriverPlugin_FRAMEWORKS_DEBUG )
set(qt_Qt5_QPSQLDriverPlugin_DEPENDENCIES_DEBUG PostgreSQL::PostgreSQL Qt5::Core)
set(qt_Qt5_QPSQLDriverPlugin_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_QPSQLDriverPlugin_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_QPSQLDriverPlugin_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_QPSQLDriverPlugin_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_QPSQLDriverPlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_QPSQLDriverPlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_QPSQLDriverPlugin_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_QPSQLDriverPlugin_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_QPSQLDriverPlugin_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_QPSQLDriverPlugin_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::QSQLiteDriverPlugin VARIABLES ############################################

set(qt_Qt5_QSQLiteDriverPlugin_INCLUDE_DIRS_DEBUG )
set(qt_Qt5_QSQLiteDriverPlugin_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/bin/archdatadir/plugins/sqldrivers")
set(qt_Qt5_QSQLiteDriverPlugin_BIN_DIRS_DEBUG )
set(qt_Qt5_QSQLiteDriverPlugin_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_QSQLiteDriverPlugin_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_QSQLiteDriverPlugin_RES_DIRS_DEBUG )
set(qt_Qt5_QSQLiteDriverPlugin_DEFINITIONS_DEBUG )
set(qt_Qt5_QSQLiteDriverPlugin_OBJECTS_DEBUG )
set(qt_Qt5_QSQLiteDriverPlugin_COMPILE_DEFINITIONS_DEBUG )
set(qt_Qt5_QSQLiteDriverPlugin_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_QSQLiteDriverPlugin_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_QSQLiteDriverPlugin_LIBS_DEBUG qsqlited)
set(qt_Qt5_QSQLiteDriverPlugin_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_QSQLiteDriverPlugin_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_QSQLiteDriverPlugin_FRAMEWORKS_DEBUG )
set(qt_Qt5_QSQLiteDriverPlugin_DEPENDENCIES_DEBUG SQLite::SQLite3 Qt5::Core)
set(qt_Qt5_QSQLiteDriverPlugin_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_QSQLiteDriverPlugin_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_QSQLiteDriverPlugin_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_QSQLiteDriverPlugin_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_QSQLiteDriverPlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_QSQLiteDriverPlugin_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_QSQLiteDriverPlugin_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_QSQLiteDriverPlugin_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_QSQLiteDriverPlugin_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_QSQLiteDriverPlugin_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::Gui VARIABLES ############################################

set(qt_Qt5_Gui_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtGui")
set(qt_Qt5_Gui_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_Gui_BIN_DIRS_DEBUG )
set(qt_Qt5_Gui_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_Gui_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_Gui_RES_DIRS_DEBUG )
set(qt_Qt5_Gui_DEFINITIONS_DEBUG "-DQT_GUI_LIB")
set(qt_Qt5_Gui_OBJECTS_DEBUG )
set(qt_Qt5_Gui_COMPILE_DEFINITIONS_DEBUG "QT_GUI_LIB")
set(qt_Qt5_Gui_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_Gui_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_Gui_LIBS_DEBUG Qt5Guid)
set(qt_Qt5_Gui_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_Gui_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_Gui_FRAMEWORKS_DEBUG )
set(qt_Qt5_Gui_DEPENDENCIES_DEBUG Freetype::Freetype PNG::PNG opengl::opengl JPEG::JPEG md4c::md4c-html Qt5::Core)
set(qt_Qt5_Gui_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_Gui_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_Gui_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Gui_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Gui_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Gui_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Gui_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_Gui_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Gui_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Gui_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::LinguistTools VARIABLES ############################################

set(qt_Qt5_LinguistTools_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include")
set(qt_Qt5_LinguistTools_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_LinguistTools_BIN_DIRS_DEBUG )
set(qt_Qt5_LinguistTools_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_LinguistTools_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_LinguistTools_RES_DIRS_DEBUG )
set(qt_Qt5_LinguistTools_DEFINITIONS_DEBUG )
set(qt_Qt5_LinguistTools_OBJECTS_DEBUG )
set(qt_Qt5_LinguistTools_COMPILE_DEFINITIONS_DEBUG )
set(qt_Qt5_LinguistTools_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_LinguistTools_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_LinguistTools_LIBS_DEBUG )
set(qt_Qt5_LinguistTools_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_LinguistTools_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_LinguistTools_FRAMEWORKS_DEBUG )
set(qt_Qt5_LinguistTools_DEPENDENCIES_DEBUG )
set(qt_Qt5_LinguistTools_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_LinguistTools_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_LinguistTools_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_LinguistTools_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_LinguistTools_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_LinguistTools_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_LinguistTools_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_LinguistTools_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_LinguistTools_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_LinguistTools_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::WinMain VARIABLES ############################################

set(qt_Qt5_WinMain_INCLUDE_DIRS_DEBUG )
set(qt_Qt5_WinMain_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_WinMain_BIN_DIRS_DEBUG )
set(qt_Qt5_WinMain_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_WinMain_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_WinMain_RES_DIRS_DEBUG )
set(qt_Qt5_WinMain_DEFINITIONS_DEBUG )
set(qt_Qt5_WinMain_OBJECTS_DEBUG )
set(qt_Qt5_WinMain_COMPILE_DEFINITIONS_DEBUG )
set(qt_Qt5_WinMain_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_WinMain_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_WinMain_LIBS_DEBUG qtmaind)
set(qt_Qt5_WinMain_SYSTEM_LIBS_DEBUG )
set(qt_Qt5_WinMain_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_WinMain_FRAMEWORKS_DEBUG )
set(qt_Qt5_WinMain_DEPENDENCIES_DEBUG )
set(qt_Qt5_WinMain_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_WinMain_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_WinMain_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_WinMain_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_WinMain_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_WinMain_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_WinMain_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_WinMain_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_WinMain_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_WinMain_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Qt5::Core VARIABLES ############################################

set(qt_Qt5_Core_INCLUDE_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/include"
			"${qt_PACKAGE_FOLDER_DEBUG}/include/QtCore"
			"${qt_PACKAGE_FOLDER_DEBUG}/bin/archdatadir/mkspecs/win32-msvc")
set(qt_Qt5_Core_LIB_DIRS_DEBUG "${qt_PACKAGE_FOLDER_DEBUG}/lib")
set(qt_Qt5_Core_BIN_DIRS_DEBUG )
set(qt_Qt5_Core_LIBRARY_TYPE_DEBUG STATIC)
set(qt_Qt5_Core_IS_HOST_WINDOWS_DEBUG 1)
set(qt_Qt5_Core_RES_DIRS_DEBUG )
set(qt_Qt5_Core_DEFINITIONS_DEBUG "-DQT_CORE_LIB")
set(qt_Qt5_Core_OBJECTS_DEBUG )
set(qt_Qt5_Core_COMPILE_DEFINITIONS_DEBUG "QT_CORE_LIB")
set(qt_Qt5_Core_COMPILE_OPTIONS_C_DEBUG "")
set(qt_Qt5_Core_COMPILE_OPTIONS_CXX_DEBUG "")
set(qt_Qt5_Core_LIBS_DEBUG Qt5Cored)
set(qt_Qt5_Core_SYSTEM_LIBS_DEBUG version winmm netapi32 userenv ws2_32)
set(qt_Qt5_Core_FRAMEWORK_DIRS_DEBUG )
set(qt_Qt5_Core_FRAMEWORKS_DEBUG )
set(qt_Qt5_Core_DEPENDENCIES_DEBUG ZLIB::ZLIB pcre2::pcre2 double-conversion::double-conversion zstd::libzstd_static)
set(qt_Qt5_Core_SHARED_LINK_FLAGS_DEBUG )
set(qt_Qt5_Core_EXE_LINK_FLAGS_DEBUG )
set(qt_Qt5_Core_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(qt_Qt5_Core_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${qt_Qt5_Core_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${qt_Qt5_Core_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${qt_Qt5_Core_EXE_LINK_FLAGS_DEBUG}>
)
set(qt_Qt5_Core_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${qt_Qt5_Core_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${qt_Qt5_Core_COMPILE_OPTIONS_C_DEBUG}>")