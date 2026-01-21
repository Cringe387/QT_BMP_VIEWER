# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(qt_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(qt_FRAMEWORKS_FOUND_RELEASE "${qt_FRAMEWORKS_RELEASE}" "${qt_FRAMEWORK_DIRS_RELEASE}")

set(qt_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET qt_DEPS_TARGET)
    add_library(qt_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET qt_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${qt_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${qt_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:ZLIB::ZLIB;pcre2::pcre2;double-conversion::double-conversion;zstd::libzstd_static;Freetype::Freetype;PNG::PNG;opengl::opengl;JPEG::JPEG;md4c::md4c-html;Qt5::Core;Qt5::Gui;Qt5::Widgets;Qt5::EventDispatcherSupport;Qt5::FontDatabaseSupport;Qt5::ThemeSupport;Qt5::AccessibilitySupport;Qt5::WindowsUIAutomationSupport;SQLite::SQLite3;PostgreSQL::PostgreSQL;openssl::openssl;Qt5::Network;Qt5::Qml;Qt5::QmlModels;Qt5::Quick;Qt5::Test;Qt5::UiPlugin;Qt5::Xml;Qt5::Sql;OpenAL::OpenAL;Qt5::Multimedia>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### qt_DEPS_TARGET to all of them
conan_package_library_targets("${qt_LIBS_RELEASE}"    # libraries
                              "${qt_LIB_DIRS_RELEASE}" # package_libdir
                              "${qt_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_LIBRARY_TYPE_RELEASE}"
                              "${qt_IS_HOST_WINDOWS_RELEASE}"
                              qt_DEPS_TARGET
                              qt_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "qt"    # package_name
                              "${qt_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${qt_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES Release ########################################

    ########## COMPONENT Qt5::MultimediaQuick #############

        set(qt_Qt5_MultimediaQuick_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_MultimediaQuick_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_MultimediaQuick_FRAMEWORKS_RELEASE}" "${qt_Qt5_MultimediaQuick_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_MultimediaQuick_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_MultimediaQuick_DEPS_TARGET)
            add_library(qt_Qt5_MultimediaQuick_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_MultimediaQuick_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaQuick_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaQuick_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaQuick_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_MultimediaQuick_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_MultimediaQuick_LIBS_RELEASE}"
                              "${qt_Qt5_MultimediaQuick_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_MultimediaQuick_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_MultimediaQuick_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_MultimediaQuick_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_MultimediaQuick_DEPS_TARGET
                              qt_Qt5_MultimediaQuick_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_MultimediaQuick"
                              "${qt_Qt5_MultimediaQuick_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::MultimediaQuick
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaQuick_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaQuick_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_MultimediaQuick_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::MultimediaQuick
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_MultimediaQuick_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::MultimediaQuick APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaQuick_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::MultimediaQuick APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaQuick_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::MultimediaQuick APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaQuick_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::MultimediaQuick APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaQuick_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::MultimediaQuick APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaQuick_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::QuickTemplates2 #############

        set(qt_Qt5_QuickTemplates2_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_QuickTemplates2_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_QuickTemplates2_FRAMEWORKS_RELEASE}" "${qt_Qt5_QuickTemplates2_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_QuickTemplates2_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_QuickTemplates2_DEPS_TARGET)
            add_library(qt_Qt5_QuickTemplates2_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_QuickTemplates2_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTemplates2_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTemplates2_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTemplates2_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_QuickTemplates2_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_QuickTemplates2_LIBS_RELEASE}"
                              "${qt_Qt5_QuickTemplates2_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_QuickTemplates2_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_QuickTemplates2_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_QuickTemplates2_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_QuickTemplates2_DEPS_TARGET
                              qt_Qt5_QuickTemplates2_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_QuickTemplates2"
                              "${qt_Qt5_QuickTemplates2_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::QuickTemplates2
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTemplates2_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTemplates2_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_QuickTemplates2_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::QuickTemplates2
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_QuickTemplates2_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::QuickTemplates2 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTemplates2_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::QuickTemplates2 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTemplates2_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QuickTemplates2 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTemplates2_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QuickTemplates2 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTemplates2_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::QuickTemplates2 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTemplates2_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::QuickControls2 #############

        set(qt_Qt5_QuickControls2_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_QuickControls2_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_QuickControls2_FRAMEWORKS_RELEASE}" "${qt_Qt5_QuickControls2_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_QuickControls2_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_QuickControls2_DEPS_TARGET)
            add_library(qt_Qt5_QuickControls2_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_QuickControls2_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickControls2_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QuickControls2_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QuickControls2_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_QuickControls2_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_QuickControls2_LIBS_RELEASE}"
                              "${qt_Qt5_QuickControls2_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_QuickControls2_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_QuickControls2_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_QuickControls2_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_QuickControls2_DEPS_TARGET
                              qt_Qt5_QuickControls2_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_QuickControls2"
                              "${qt_Qt5_QuickControls2_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::QuickControls2
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickControls2_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QuickControls2_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_QuickControls2_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::QuickControls2
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_QuickControls2_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::QuickControls2 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QuickControls2_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::QuickControls2 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickControls2_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QuickControls2 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickControls2_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QuickControls2 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QuickControls2_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::QuickControls2 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QuickControls2_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::QuickShapes #############

        set(qt_Qt5_QuickShapes_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_QuickShapes_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_QuickShapes_FRAMEWORKS_RELEASE}" "${qt_Qt5_QuickShapes_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_QuickShapes_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_QuickShapes_DEPS_TARGET)
            add_library(qt_Qt5_QuickShapes_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_QuickShapes_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickShapes_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QuickShapes_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QuickShapes_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_QuickShapes_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_QuickShapes_LIBS_RELEASE}"
                              "${qt_Qt5_QuickShapes_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_QuickShapes_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_QuickShapes_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_QuickShapes_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_QuickShapes_DEPS_TARGET
                              qt_Qt5_QuickShapes_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_QuickShapes"
                              "${qt_Qt5_QuickShapes_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::QuickShapes
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickShapes_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QuickShapes_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_QuickShapes_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::QuickShapes
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_QuickShapes_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::QuickShapes APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QuickShapes_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::QuickShapes APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickShapes_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QuickShapes APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickShapes_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QuickShapes APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QuickShapes_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::QuickShapes APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QuickShapes_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::QuickWidgets #############

        set(qt_Qt5_QuickWidgets_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_QuickWidgets_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_QuickWidgets_FRAMEWORKS_RELEASE}" "${qt_Qt5_QuickWidgets_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_QuickWidgets_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_QuickWidgets_DEPS_TARGET)
            add_library(qt_Qt5_QuickWidgets_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_QuickWidgets_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickWidgets_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QuickWidgets_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QuickWidgets_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_QuickWidgets_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_QuickWidgets_LIBS_RELEASE}"
                              "${qt_Qt5_QuickWidgets_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_QuickWidgets_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_QuickWidgets_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_QuickWidgets_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_QuickWidgets_DEPS_TARGET
                              qt_Qt5_QuickWidgets_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_QuickWidgets"
                              "${qt_Qt5_QuickWidgets_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::QuickWidgets
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickWidgets_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QuickWidgets_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_QuickWidgets_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::QuickWidgets
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_QuickWidgets_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::QuickWidgets APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QuickWidgets_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::QuickWidgets APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickWidgets_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QuickWidgets APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickWidgets_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QuickWidgets APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QuickWidgets_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::QuickWidgets APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QuickWidgets_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::Designer #############

        set(qt_Qt5_Designer_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Designer_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Designer_FRAMEWORKS_RELEASE}" "${qt_Qt5_Designer_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Designer_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Designer_DEPS_TARGET)
            add_library(qt_Qt5_Designer_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Designer_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Designer_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Designer_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Designer_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Designer_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Designer_LIBS_RELEASE}"
                              "${qt_Qt5_Designer_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Designer_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Designer_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Designer_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Designer_DEPS_TARGET
                              qt_Qt5_Designer_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Designer"
                              "${qt_Qt5_Designer_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Designer
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Designer_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Designer_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_Designer_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Designer
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Designer_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::Designer APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Designer_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::Designer APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Designer_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Designer APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Designer_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Designer APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Designer_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::Designer APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Designer_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::UiTools #############

        set(qt_Qt5_UiTools_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_UiTools_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_UiTools_FRAMEWORKS_RELEASE}" "${qt_Qt5_UiTools_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_UiTools_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_UiTools_DEPS_TARGET)
            add_library(qt_Qt5_UiTools_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_UiTools_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_UiTools_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_UiTools_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_UiTools_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_UiTools_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_UiTools_LIBS_RELEASE}"
                              "${qt_Qt5_UiTools_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_UiTools_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_UiTools_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_UiTools_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_UiTools_DEPS_TARGET
                              qt_Qt5_UiTools_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_UiTools"
                              "${qt_Qt5_UiTools_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::UiTools
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_UiTools_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_UiTools_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_UiTools_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::UiTools
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_UiTools_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::UiTools APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_UiTools_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::UiTools APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_UiTools_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::UiTools APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_UiTools_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::UiTools APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_UiTools_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::UiTools APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_UiTools_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::Quick #############

        set(qt_Qt5_Quick_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Quick_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Quick_FRAMEWORKS_RELEASE}" "${qt_Qt5_Quick_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Quick_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Quick_DEPS_TARGET)
            add_library(qt_Qt5_Quick_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Quick_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Quick_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Quick_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Quick_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Quick_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Quick_LIBS_RELEASE}"
                              "${qt_Qt5_Quick_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Quick_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Quick_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Quick_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Quick_DEPS_TARGET
                              qt_Qt5_Quick_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Quick"
                              "${qt_Qt5_Quick_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Quick
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Quick_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Quick_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_Quick_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Quick
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Quick_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::Quick APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Quick_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::Quick APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Quick_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Quick APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Quick_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Quick APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Quick_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::Quick APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Quick_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::MultimediaWidgets #############

        set(qt_Qt5_MultimediaWidgets_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_MultimediaWidgets_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_MultimediaWidgets_FRAMEWORKS_RELEASE}" "${qt_Qt5_MultimediaWidgets_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_MultimediaWidgets_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_MultimediaWidgets_DEPS_TARGET)
            add_library(qt_Qt5_MultimediaWidgets_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_MultimediaWidgets_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaWidgets_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaWidgets_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaWidgets_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_MultimediaWidgets_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_MultimediaWidgets_LIBS_RELEASE}"
                              "${qt_Qt5_MultimediaWidgets_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_MultimediaWidgets_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_MultimediaWidgets_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_MultimediaWidgets_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_MultimediaWidgets_DEPS_TARGET
                              qt_Qt5_MultimediaWidgets_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_MultimediaWidgets"
                              "${qt_Qt5_MultimediaWidgets_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::MultimediaWidgets
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaWidgets_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaWidgets_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_MultimediaWidgets_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::MultimediaWidgets
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_MultimediaWidgets_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::MultimediaWidgets APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaWidgets_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::MultimediaWidgets APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaWidgets_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::MultimediaWidgets APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaWidgets_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::MultimediaWidgets APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaWidgets_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::MultimediaWidgets APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_MultimediaWidgets_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::Help #############

        set(qt_Qt5_Help_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Help_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Help_FRAMEWORKS_RELEASE}" "${qt_Qt5_Help_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Help_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Help_DEPS_TARGET)
            add_library(qt_Qt5_Help_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Help_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Help_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Help_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Help_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Help_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Help_LIBS_RELEASE}"
                              "${qt_Qt5_Help_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Help_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Help_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Help_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Help_DEPS_TARGET
                              qt_Qt5_Help_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Help"
                              "${qt_Qt5_Help_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Help
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Help_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Help_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_Help_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Help
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Help_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::Help APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Help_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::Help APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Help_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Help APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Help_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Help APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Help_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::Help APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Help_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::UiPlugin #############

        set(qt_Qt5_UiPlugin_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_UiPlugin_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_UiPlugin_FRAMEWORKS_RELEASE}" "${qt_Qt5_UiPlugin_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_UiPlugin_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_UiPlugin_DEPS_TARGET)
            add_library(qt_Qt5_UiPlugin_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_UiPlugin_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_UiPlugin_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_UiPlugin_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_UiPlugin_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_UiPlugin_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_UiPlugin_LIBS_RELEASE}"
                              "${qt_Qt5_UiPlugin_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_UiPlugin_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_UiPlugin_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_UiPlugin_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_UiPlugin_DEPS_TARGET
                              qt_Qt5_UiPlugin_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_UiPlugin"
                              "${qt_Qt5_UiPlugin_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::UiPlugin
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_UiPlugin_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_UiPlugin_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_UiPlugin_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::UiPlugin
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_UiPlugin_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::UiPlugin APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_UiPlugin_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::UiPlugin APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_UiPlugin_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::UiPlugin APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_UiPlugin_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::UiPlugin APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_UiPlugin_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::UiPlugin APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_UiPlugin_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::QmlWorkerScript #############

        set(qt_Qt5_QmlWorkerScript_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_QmlWorkerScript_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_QmlWorkerScript_FRAMEWORKS_RELEASE}" "${qt_Qt5_QmlWorkerScript_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_QmlWorkerScript_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_QmlWorkerScript_DEPS_TARGET)
            add_library(qt_Qt5_QmlWorkerScript_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_QmlWorkerScript_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QmlWorkerScript_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QmlWorkerScript_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QmlWorkerScript_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_QmlWorkerScript_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_QmlWorkerScript_LIBS_RELEASE}"
                              "${qt_Qt5_QmlWorkerScript_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_QmlWorkerScript_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_QmlWorkerScript_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_QmlWorkerScript_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_QmlWorkerScript_DEPS_TARGET
                              qt_Qt5_QmlWorkerScript_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_QmlWorkerScript"
                              "${qt_Qt5_QmlWorkerScript_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::QmlWorkerScript
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QmlWorkerScript_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QmlWorkerScript_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_QmlWorkerScript_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::QmlWorkerScript
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_QmlWorkerScript_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::QmlWorkerScript APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QmlWorkerScript_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::QmlWorkerScript APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QmlWorkerScript_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QmlWorkerScript APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QmlWorkerScript_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QmlWorkerScript APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QmlWorkerScript_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::QmlWorkerScript APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QmlWorkerScript_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::QmlImportScanner #############

        set(qt_Qt5_QmlImportScanner_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_QmlImportScanner_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_QmlImportScanner_FRAMEWORKS_RELEASE}" "${qt_Qt5_QmlImportScanner_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_QmlImportScanner_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_QmlImportScanner_DEPS_TARGET)
            add_library(qt_Qt5_QmlImportScanner_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_QmlImportScanner_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QmlImportScanner_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QmlImportScanner_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QmlImportScanner_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_QmlImportScanner_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_QmlImportScanner_LIBS_RELEASE}"
                              "${qt_Qt5_QmlImportScanner_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_QmlImportScanner_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_QmlImportScanner_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_QmlImportScanner_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_QmlImportScanner_DEPS_TARGET
                              qt_Qt5_QmlImportScanner_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_QmlImportScanner"
                              "${qt_Qt5_QmlImportScanner_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::QmlImportScanner
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QmlImportScanner_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QmlImportScanner_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_QmlImportScanner_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::QmlImportScanner
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_QmlImportScanner_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::QmlImportScanner APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QmlImportScanner_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::QmlImportScanner APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QmlImportScanner_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QmlImportScanner APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QmlImportScanner_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QmlImportScanner APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QmlImportScanner_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::QmlImportScanner APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QmlImportScanner_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::QmlModels #############

        set(qt_Qt5_QmlModels_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_QmlModels_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_QmlModels_FRAMEWORKS_RELEASE}" "${qt_Qt5_QmlModels_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_QmlModels_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_QmlModels_DEPS_TARGET)
            add_library(qt_Qt5_QmlModels_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_QmlModels_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QmlModels_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QmlModels_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QmlModels_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_QmlModels_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_QmlModels_LIBS_RELEASE}"
                              "${qt_Qt5_QmlModels_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_QmlModels_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_QmlModels_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_QmlModels_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_QmlModels_DEPS_TARGET
                              qt_Qt5_QmlModels_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_QmlModels"
                              "${qt_Qt5_QmlModels_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::QmlModels
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QmlModels_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QmlModels_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_QmlModels_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::QmlModels
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_QmlModels_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::QmlModels APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QmlModels_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::QmlModels APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QmlModels_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QmlModels APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QmlModels_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QmlModels APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QmlModels_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::QmlModels APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QmlModels_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::QWindowsVistaStylePlugin #############

        set(qt_Qt5_QWindowsVistaStylePlugin_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_QWindowsVistaStylePlugin_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_QWindowsVistaStylePlugin_FRAMEWORKS_RELEASE}" "${qt_Qt5_QWindowsVistaStylePlugin_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_QWindowsVistaStylePlugin_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_QWindowsVistaStylePlugin_DEPS_TARGET)
            add_library(qt_Qt5_QWindowsVistaStylePlugin_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_QWindowsVistaStylePlugin_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsVistaStylePlugin_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsVistaStylePlugin_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsVistaStylePlugin_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_QWindowsVistaStylePlugin_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_QWindowsVistaStylePlugin_LIBS_RELEASE}"
                              "${qt_Qt5_QWindowsVistaStylePlugin_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_QWindowsVistaStylePlugin_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_QWindowsVistaStylePlugin_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_QWindowsVistaStylePlugin_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_QWindowsVistaStylePlugin_DEPS_TARGET
                              qt_Qt5_QWindowsVistaStylePlugin_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_QWindowsVistaStylePlugin"
                              "${qt_Qt5_QWindowsVistaStylePlugin_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::QWindowsVistaStylePlugin
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsVistaStylePlugin_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsVistaStylePlugin_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_QWindowsVistaStylePlugin_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::QWindowsVistaStylePlugin
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_QWindowsVistaStylePlugin_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::QWindowsVistaStylePlugin APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsVistaStylePlugin_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::QWindowsVistaStylePlugin APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsVistaStylePlugin_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QWindowsVistaStylePlugin APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsVistaStylePlugin_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QWindowsVistaStylePlugin APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsVistaStylePlugin_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::QWindowsVistaStylePlugin APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsVistaStylePlugin_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::QWindowsIntegrationPlugin #############

        set(qt_Qt5_QWindowsIntegrationPlugin_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_QWindowsIntegrationPlugin_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_QWindowsIntegrationPlugin_FRAMEWORKS_RELEASE}" "${qt_Qt5_QWindowsIntegrationPlugin_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_QWindowsIntegrationPlugin_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_QWindowsIntegrationPlugin_DEPS_TARGET)
            add_library(qt_Qt5_QWindowsIntegrationPlugin_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_QWindowsIntegrationPlugin_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsIntegrationPlugin_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsIntegrationPlugin_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsIntegrationPlugin_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_QWindowsIntegrationPlugin_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_QWindowsIntegrationPlugin_LIBS_RELEASE}"
                              "${qt_Qt5_QWindowsIntegrationPlugin_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_QWindowsIntegrationPlugin_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_QWindowsIntegrationPlugin_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_QWindowsIntegrationPlugin_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_QWindowsIntegrationPlugin_DEPS_TARGET
                              qt_Qt5_QWindowsIntegrationPlugin_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_QWindowsIntegrationPlugin"
                              "${qt_Qt5_QWindowsIntegrationPlugin_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::QWindowsIntegrationPlugin
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsIntegrationPlugin_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsIntegrationPlugin_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_QWindowsIntegrationPlugin_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::QWindowsIntegrationPlugin
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_QWindowsIntegrationPlugin_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::QWindowsIntegrationPlugin APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsIntegrationPlugin_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::QWindowsIntegrationPlugin APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsIntegrationPlugin_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QWindowsIntegrationPlugin APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsIntegrationPlugin_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QWindowsIntegrationPlugin APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsIntegrationPlugin_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::QWindowsIntegrationPlugin APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsIntegrationPlugin_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::PrintSupport #############

        set(qt_Qt5_PrintSupport_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_PrintSupport_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_PrintSupport_FRAMEWORKS_RELEASE}" "${qt_Qt5_PrintSupport_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_PrintSupport_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_PrintSupport_DEPS_TARGET)
            add_library(qt_Qt5_PrintSupport_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_PrintSupport_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_PrintSupport_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_PrintSupport_LIBS_RELEASE}"
                              "${qt_Qt5_PrintSupport_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_PrintSupport_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_PrintSupport_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_PrintSupport_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_PrintSupport_DEPS_TARGET
                              qt_Qt5_PrintSupport_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_PrintSupport"
                              "${qt_Qt5_PrintSupport_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::PrintSupport
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_PrintSupport_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::PrintSupport
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_PrintSupport_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::PrintSupport APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::PrintSupport APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::PrintSupport APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::PrintSupport APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::PrintSupport APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_PrintSupport_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::Multimedia #############

        set(qt_Qt5_Multimedia_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Multimedia_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Multimedia_FRAMEWORKS_RELEASE}" "${qt_Qt5_Multimedia_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Multimedia_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Multimedia_DEPS_TARGET)
            add_library(qt_Qt5_Multimedia_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Multimedia_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Multimedia_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Multimedia_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Multimedia_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Multimedia_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Multimedia_LIBS_RELEASE}"
                              "${qt_Qt5_Multimedia_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Multimedia_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Multimedia_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Multimedia_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Multimedia_DEPS_TARGET
                              qt_Qt5_Multimedia_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Multimedia"
                              "${qt_Qt5_Multimedia_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Multimedia
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Multimedia_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Multimedia_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_Multimedia_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Multimedia
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Multimedia_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::Multimedia APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Multimedia_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::Multimedia APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Multimedia_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Multimedia APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Multimedia_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Multimedia APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Multimedia_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::Multimedia APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Multimedia_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::QuickTest #############

        set(qt_Qt5_QuickTest_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_QuickTest_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_QuickTest_FRAMEWORKS_RELEASE}" "${qt_Qt5_QuickTest_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_QuickTest_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_QuickTest_DEPS_TARGET)
            add_library(qt_Qt5_QuickTest_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_QuickTest_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTest_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTest_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTest_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_QuickTest_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_QuickTest_LIBS_RELEASE}"
                              "${qt_Qt5_QuickTest_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_QuickTest_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_QuickTest_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_QuickTest_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_QuickTest_DEPS_TARGET
                              qt_Qt5_QuickTest_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_QuickTest"
                              "${qt_Qt5_QuickTest_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::QuickTest
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTest_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTest_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_QuickTest_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::QuickTest
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_QuickTest_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::QuickTest APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTest_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::QuickTest APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTest_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QuickTest APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTest_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QuickTest APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTest_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::QuickTest APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QuickTest_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::Qml #############

        set(qt_Qt5_Qml_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Qml_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Qml_FRAMEWORKS_RELEASE}" "${qt_Qt5_Qml_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Qml_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Qml_DEPS_TARGET)
            add_library(qt_Qt5_Qml_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Qml_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Qml_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Qml_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Qml_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Qml_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Qml_LIBS_RELEASE}"
                              "${qt_Qt5_Qml_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Qml_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Qml_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Qml_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Qml_DEPS_TARGET
                              qt_Qt5_Qml_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Qml"
                              "${qt_Qt5_Qml_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Qml
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Qml_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Qml_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_Qml_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Qml
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Qml_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::Qml APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Qml_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::Qml APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Qml_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Qml APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Qml_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Qml APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Qml_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::Qml APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Qml_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::OpenGLExtensions #############

        set(qt_Qt5_OpenGLExtensions_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_OpenGLExtensions_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_OpenGLExtensions_FRAMEWORKS_RELEASE}" "${qt_Qt5_OpenGLExtensions_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_OpenGLExtensions_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_OpenGLExtensions_DEPS_TARGET)
            add_library(qt_Qt5_OpenGLExtensions_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_OpenGLExtensions_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_OpenGLExtensions_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_OpenGLExtensions_LIBS_RELEASE}"
                              "${qt_Qt5_OpenGLExtensions_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_OpenGLExtensions_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_OpenGLExtensions_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_OpenGLExtensions_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_OpenGLExtensions_DEPS_TARGET
                              qt_Qt5_OpenGLExtensions_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_OpenGLExtensions"
                              "${qt_Qt5_OpenGLExtensions_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::OpenGLExtensions
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_OpenGLExtensions_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::OpenGLExtensions
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_OpenGLExtensions_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::OpenGLExtensions APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::OpenGLExtensions APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::OpenGLExtensions APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::OpenGLExtensions APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::OpenGLExtensions APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGLExtensions_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::OpenGL #############

        set(qt_Qt5_OpenGL_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_OpenGL_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_OpenGL_FRAMEWORKS_RELEASE}" "${qt_Qt5_OpenGL_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_OpenGL_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_OpenGL_DEPS_TARGET)
            add_library(qt_Qt5_OpenGL_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_OpenGL_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_OpenGL_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_OpenGL_LIBS_RELEASE}"
                              "${qt_Qt5_OpenGL_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_OpenGL_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_OpenGL_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_OpenGL_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_OpenGL_DEPS_TARGET
                              qt_Qt5_OpenGL_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_OpenGL"
                              "${qt_Qt5_OpenGL_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::OpenGL
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_OpenGL_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::OpenGL
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_OpenGL_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::OpenGL APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::OpenGL APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::OpenGL APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::OpenGL APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::OpenGL APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_OpenGL_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::WindowsUIAutomationSupport #############

        set(qt_Qt5_WindowsUIAutomationSupport_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_WindowsUIAutomationSupport_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_WindowsUIAutomationSupport_FRAMEWORKS_RELEASE}" "${qt_Qt5_WindowsUIAutomationSupport_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_WindowsUIAutomationSupport_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_WindowsUIAutomationSupport_DEPS_TARGET)
            add_library(qt_Qt5_WindowsUIAutomationSupport_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_WindowsUIAutomationSupport_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_WindowsUIAutomationSupport_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_WindowsUIAutomationSupport_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_WindowsUIAutomationSupport_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_WindowsUIAutomationSupport_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_WindowsUIAutomationSupport_LIBS_RELEASE}"
                              "${qt_Qt5_WindowsUIAutomationSupport_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_WindowsUIAutomationSupport_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_WindowsUIAutomationSupport_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_WindowsUIAutomationSupport_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_WindowsUIAutomationSupport_DEPS_TARGET
                              qt_Qt5_WindowsUIAutomationSupport_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_WindowsUIAutomationSupport"
                              "${qt_Qt5_WindowsUIAutomationSupport_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::WindowsUIAutomationSupport
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_WindowsUIAutomationSupport_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_WindowsUIAutomationSupport_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_WindowsUIAutomationSupport_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::WindowsUIAutomationSupport
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_WindowsUIAutomationSupport_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::WindowsUIAutomationSupport APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_WindowsUIAutomationSupport_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::WindowsUIAutomationSupport APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_WindowsUIAutomationSupport_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::WindowsUIAutomationSupport APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_WindowsUIAutomationSupport_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::WindowsUIAutomationSupport APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_WindowsUIAutomationSupport_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::WindowsUIAutomationSupport APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_WindowsUIAutomationSupport_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::Widgets #############

        set(qt_Qt5_Widgets_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Widgets_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Widgets_FRAMEWORKS_RELEASE}" "${qt_Qt5_Widgets_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Widgets_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Widgets_DEPS_TARGET)
            add_library(qt_Qt5_Widgets_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Widgets_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Widgets_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Widgets_LIBS_RELEASE}"
                              "${qt_Qt5_Widgets_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Widgets_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Widgets_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Widgets_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Widgets_DEPS_TARGET
                              qt_Qt5_Widgets_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Widgets"
                              "${qt_Qt5_Widgets_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Widgets
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_Widgets_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Widgets
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Widgets_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::Widgets APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::Widgets APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Widgets APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Widgets APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::Widgets APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Widgets_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::AccessibilitySupport #############

        set(qt_Qt5_AccessibilitySupport_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_AccessibilitySupport_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_AccessibilitySupport_FRAMEWORKS_RELEASE}" "${qt_Qt5_AccessibilitySupport_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_AccessibilitySupport_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_AccessibilitySupport_DEPS_TARGET)
            add_library(qt_Qt5_AccessibilitySupport_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_AccessibilitySupport_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_AccessibilitySupport_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_AccessibilitySupport_LIBS_RELEASE}"
                              "${qt_Qt5_AccessibilitySupport_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_AccessibilitySupport_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_AccessibilitySupport_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_AccessibilitySupport_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_AccessibilitySupport_DEPS_TARGET
                              qt_Qt5_AccessibilitySupport_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_AccessibilitySupport"
                              "${qt_Qt5_AccessibilitySupport_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::AccessibilitySupport
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_AccessibilitySupport_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::AccessibilitySupport
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_AccessibilitySupport_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::AccessibilitySupport APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::AccessibilitySupport APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::AccessibilitySupport APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::AccessibilitySupport APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::AccessibilitySupport APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_AccessibilitySupport_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::ThemeSupport #############

        set(qt_Qt5_ThemeSupport_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_ThemeSupport_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_ThemeSupport_FRAMEWORKS_RELEASE}" "${qt_Qt5_ThemeSupport_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_ThemeSupport_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_ThemeSupport_DEPS_TARGET)
            add_library(qt_Qt5_ThemeSupport_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_ThemeSupport_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_ThemeSupport_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_ThemeSupport_LIBS_RELEASE}"
                              "${qt_Qt5_ThemeSupport_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_ThemeSupport_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_ThemeSupport_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_ThemeSupport_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_ThemeSupport_DEPS_TARGET
                              qt_Qt5_ThemeSupport_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_ThemeSupport"
                              "${qt_Qt5_ThemeSupport_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::ThemeSupport
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_ThemeSupport_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::ThemeSupport
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_ThemeSupport_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::ThemeSupport APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::ThemeSupport APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::ThemeSupport APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::ThemeSupport APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::ThemeSupport APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_ThemeSupport_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::FontDatabaseSupport #############

        set(qt_Qt5_FontDatabaseSupport_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_FontDatabaseSupport_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_FontDatabaseSupport_FRAMEWORKS_RELEASE}" "${qt_Qt5_FontDatabaseSupport_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_FontDatabaseSupport_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_FontDatabaseSupport_DEPS_TARGET)
            add_library(qt_Qt5_FontDatabaseSupport_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_FontDatabaseSupport_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_FontDatabaseSupport_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_FontDatabaseSupport_LIBS_RELEASE}"
                              "${qt_Qt5_FontDatabaseSupport_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_FontDatabaseSupport_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_FontDatabaseSupport_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_FontDatabaseSupport_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_FontDatabaseSupport_DEPS_TARGET
                              qt_Qt5_FontDatabaseSupport_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_FontDatabaseSupport"
                              "${qt_Qt5_FontDatabaseSupport_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::FontDatabaseSupport
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_FontDatabaseSupport_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::FontDatabaseSupport
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_FontDatabaseSupport_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::FontDatabaseSupport APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::FontDatabaseSupport APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::FontDatabaseSupport APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::FontDatabaseSupport APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::FontDatabaseSupport APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_FontDatabaseSupport_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::EventDispatcherSupport #############

        set(qt_Qt5_EventDispatcherSupport_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_EventDispatcherSupport_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_EventDispatcherSupport_FRAMEWORKS_RELEASE}" "${qt_Qt5_EventDispatcherSupport_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_EventDispatcherSupport_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_EventDispatcherSupport_DEPS_TARGET)
            add_library(qt_Qt5_EventDispatcherSupport_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_EventDispatcherSupport_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_EventDispatcherSupport_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_EventDispatcherSupport_LIBS_RELEASE}"
                              "${qt_Qt5_EventDispatcherSupport_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_EventDispatcherSupport_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_EventDispatcherSupport_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_EventDispatcherSupport_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_EventDispatcherSupport_DEPS_TARGET
                              qt_Qt5_EventDispatcherSupport_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_EventDispatcherSupport"
                              "${qt_Qt5_EventDispatcherSupport_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::EventDispatcherSupport
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_EventDispatcherSupport_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::EventDispatcherSupport
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_EventDispatcherSupport_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::EventDispatcherSupport APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::EventDispatcherSupport APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::EventDispatcherSupport APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::EventDispatcherSupport APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::EventDispatcherSupport APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_EventDispatcherSupport_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::QWindowsAudioPlugin #############

        set(qt_Qt5_QWindowsAudioPlugin_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_QWindowsAudioPlugin_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_QWindowsAudioPlugin_FRAMEWORKS_RELEASE}" "${qt_Qt5_QWindowsAudioPlugin_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_QWindowsAudioPlugin_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_QWindowsAudioPlugin_DEPS_TARGET)
            add_library(qt_Qt5_QWindowsAudioPlugin_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_QWindowsAudioPlugin_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsAudioPlugin_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsAudioPlugin_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsAudioPlugin_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_QWindowsAudioPlugin_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_QWindowsAudioPlugin_LIBS_RELEASE}"
                              "${qt_Qt5_QWindowsAudioPlugin_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_QWindowsAudioPlugin_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_QWindowsAudioPlugin_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_QWindowsAudioPlugin_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_QWindowsAudioPlugin_DEPS_TARGET
                              qt_Qt5_QWindowsAudioPlugin_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_QWindowsAudioPlugin"
                              "${qt_Qt5_QWindowsAudioPlugin_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::QWindowsAudioPlugin
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsAudioPlugin_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsAudioPlugin_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_QWindowsAudioPlugin_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::QWindowsAudioPlugin
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_QWindowsAudioPlugin_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::QWindowsAudioPlugin APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsAudioPlugin_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::QWindowsAudioPlugin APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsAudioPlugin_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QWindowsAudioPlugin APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsAudioPlugin_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QWindowsAudioPlugin APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsAudioPlugin_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::QWindowsAudioPlugin APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QWindowsAudioPlugin_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::DSServicePlugin #############

        set(qt_Qt5_DSServicePlugin_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_DSServicePlugin_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_DSServicePlugin_FRAMEWORKS_RELEASE}" "${qt_Qt5_DSServicePlugin_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_DSServicePlugin_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_DSServicePlugin_DEPS_TARGET)
            add_library(qt_Qt5_DSServicePlugin_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_DSServicePlugin_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_DSServicePlugin_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_DSServicePlugin_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_DSServicePlugin_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_DSServicePlugin_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_DSServicePlugin_LIBS_RELEASE}"
                              "${qt_Qt5_DSServicePlugin_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_DSServicePlugin_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_DSServicePlugin_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_DSServicePlugin_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_DSServicePlugin_DEPS_TARGET
                              qt_Qt5_DSServicePlugin_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_DSServicePlugin"
                              "${qt_Qt5_DSServicePlugin_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::DSServicePlugin
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_DSServicePlugin_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_DSServicePlugin_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_DSServicePlugin_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::DSServicePlugin
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_DSServicePlugin_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::DSServicePlugin APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_DSServicePlugin_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::DSServicePlugin APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_DSServicePlugin_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::DSServicePlugin APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_DSServicePlugin_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::DSServicePlugin APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_DSServicePlugin_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::DSServicePlugin APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_DSServicePlugin_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::AudioCaptureServicePlugin #############

        set(qt_Qt5_AudioCaptureServicePlugin_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_AudioCaptureServicePlugin_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_AudioCaptureServicePlugin_FRAMEWORKS_RELEASE}" "${qt_Qt5_AudioCaptureServicePlugin_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_AudioCaptureServicePlugin_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_AudioCaptureServicePlugin_DEPS_TARGET)
            add_library(qt_Qt5_AudioCaptureServicePlugin_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_AudioCaptureServicePlugin_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_AudioCaptureServicePlugin_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_AudioCaptureServicePlugin_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_AudioCaptureServicePlugin_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_AudioCaptureServicePlugin_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_AudioCaptureServicePlugin_LIBS_RELEASE}"
                              "${qt_Qt5_AudioCaptureServicePlugin_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_AudioCaptureServicePlugin_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_AudioCaptureServicePlugin_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_AudioCaptureServicePlugin_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_AudioCaptureServicePlugin_DEPS_TARGET
                              qt_Qt5_AudioCaptureServicePlugin_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_AudioCaptureServicePlugin"
                              "${qt_Qt5_AudioCaptureServicePlugin_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::AudioCaptureServicePlugin
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_AudioCaptureServicePlugin_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_AudioCaptureServicePlugin_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_AudioCaptureServicePlugin_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::AudioCaptureServicePlugin
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_AudioCaptureServicePlugin_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::AudioCaptureServicePlugin APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_AudioCaptureServicePlugin_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::AudioCaptureServicePlugin APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_AudioCaptureServicePlugin_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::AudioCaptureServicePlugin APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_AudioCaptureServicePlugin_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::AudioCaptureServicePlugin APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_AudioCaptureServicePlugin_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::AudioCaptureServicePlugin APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_AudioCaptureServicePlugin_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::QM3uPlaylistPlugin #############

        set(qt_Qt5_QM3uPlaylistPlugin_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_QM3uPlaylistPlugin_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_QM3uPlaylistPlugin_FRAMEWORKS_RELEASE}" "${qt_Qt5_QM3uPlaylistPlugin_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_QM3uPlaylistPlugin_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_QM3uPlaylistPlugin_DEPS_TARGET)
            add_library(qt_Qt5_QM3uPlaylistPlugin_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_QM3uPlaylistPlugin_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QM3uPlaylistPlugin_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QM3uPlaylistPlugin_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QM3uPlaylistPlugin_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_QM3uPlaylistPlugin_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_QM3uPlaylistPlugin_LIBS_RELEASE}"
                              "${qt_Qt5_QM3uPlaylistPlugin_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_QM3uPlaylistPlugin_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_QM3uPlaylistPlugin_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_QM3uPlaylistPlugin_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_QM3uPlaylistPlugin_DEPS_TARGET
                              qt_Qt5_QM3uPlaylistPlugin_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_QM3uPlaylistPlugin"
                              "${qt_Qt5_QM3uPlaylistPlugin_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::QM3uPlaylistPlugin
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QM3uPlaylistPlugin_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QM3uPlaylistPlugin_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_QM3uPlaylistPlugin_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::QM3uPlaylistPlugin
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_QM3uPlaylistPlugin_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::QM3uPlaylistPlugin APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QM3uPlaylistPlugin_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::QM3uPlaylistPlugin APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QM3uPlaylistPlugin_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QM3uPlaylistPlugin APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QM3uPlaylistPlugin_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QM3uPlaylistPlugin APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QM3uPlaylistPlugin_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::QM3uPlaylistPlugin APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QM3uPlaylistPlugin_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::Xml #############

        set(qt_Qt5_Xml_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Xml_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Xml_FRAMEWORKS_RELEASE}" "${qt_Qt5_Xml_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Xml_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Xml_DEPS_TARGET)
            add_library(qt_Qt5_Xml_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Xml_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Xml_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Xml_LIBS_RELEASE}"
                              "${qt_Qt5_Xml_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Xml_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Xml_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Xml_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Xml_DEPS_TARGET
                              qt_Qt5_Xml_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Xml"
                              "${qt_Qt5_Xml_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Xml
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_Xml_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Xml
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Xml_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::Xml APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::Xml APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Xml APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Xml APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::Xml APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Xml_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::Concurrent #############

        set(qt_Qt5_Concurrent_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Concurrent_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Concurrent_FRAMEWORKS_RELEASE}" "${qt_Qt5_Concurrent_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Concurrent_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Concurrent_DEPS_TARGET)
            add_library(qt_Qt5_Concurrent_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Concurrent_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Concurrent_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Concurrent_LIBS_RELEASE}"
                              "${qt_Qt5_Concurrent_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Concurrent_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Concurrent_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Concurrent_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Concurrent_DEPS_TARGET
                              qt_Qt5_Concurrent_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Concurrent"
                              "${qt_Qt5_Concurrent_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Concurrent
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_Concurrent_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Concurrent
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Concurrent_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::Concurrent APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::Concurrent APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Concurrent APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Concurrent APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::Concurrent APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Concurrent_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::Test #############

        set(qt_Qt5_Test_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Test_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Test_FRAMEWORKS_RELEASE}" "${qt_Qt5_Test_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Test_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Test_DEPS_TARGET)
            add_library(qt_Qt5_Test_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Test_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Test_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Test_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Test_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Test_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Test_LIBS_RELEASE}"
                              "${qt_Qt5_Test_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Test_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Test_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Test_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Test_DEPS_TARGET
                              qt_Qt5_Test_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Test"
                              "${qt_Qt5_Test_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Test
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Test_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Test_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_Test_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Test
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Test_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::Test APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Test_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::Test APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Test_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Test APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Test_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Test APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Test_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::Test APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Test_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::Sql #############

        set(qt_Qt5_Sql_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Sql_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Sql_FRAMEWORKS_RELEASE}" "${qt_Qt5_Sql_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Sql_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Sql_DEPS_TARGET)
            add_library(qt_Qt5_Sql_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Sql_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Sql_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Sql_LIBS_RELEASE}"
                              "${qt_Qt5_Sql_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Sql_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Sql_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Sql_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Sql_DEPS_TARGET
                              qt_Qt5_Sql_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Sql"
                              "${qt_Qt5_Sql_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Sql
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_Sql_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Sql
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Sql_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::Sql APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::Sql APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Sql APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Sql APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::Sql APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Sql_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::Network #############

        set(qt_Qt5_Network_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Network_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Network_FRAMEWORKS_RELEASE}" "${qt_Qt5_Network_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Network_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Network_DEPS_TARGET)
            add_library(qt_Qt5_Network_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Network_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Network_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Network_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Network_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Network_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Network_LIBS_RELEASE}"
                              "${qt_Qt5_Network_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Network_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Network_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Network_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Network_DEPS_TARGET
                              qt_Qt5_Network_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Network"
                              "${qt_Qt5_Network_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Network
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Network_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Network_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_Network_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Network
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Network_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::Network APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Network_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::Network APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Network_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Network APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Network_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Network APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Network_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::Network APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Network_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::QPSQLDriverPlugin #############

        set(qt_Qt5_QPSQLDriverPlugin_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_QPSQLDriverPlugin_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_QPSQLDriverPlugin_FRAMEWORKS_RELEASE}" "${qt_Qt5_QPSQLDriverPlugin_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_QPSQLDriverPlugin_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_QPSQLDriverPlugin_DEPS_TARGET)
            add_library(qt_Qt5_QPSQLDriverPlugin_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_QPSQLDriverPlugin_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_QPSQLDriverPlugin_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_QPSQLDriverPlugin_LIBS_RELEASE}"
                              "${qt_Qt5_QPSQLDriverPlugin_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_QPSQLDriverPlugin_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_QPSQLDriverPlugin_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_QPSQLDriverPlugin_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_QPSQLDriverPlugin_DEPS_TARGET
                              qt_Qt5_QPSQLDriverPlugin_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_QPSQLDriverPlugin"
                              "${qt_Qt5_QPSQLDriverPlugin_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::QPSQLDriverPlugin
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_QPSQLDriverPlugin_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::QPSQLDriverPlugin
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_QPSQLDriverPlugin_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::QPSQLDriverPlugin APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::QPSQLDriverPlugin APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QPSQLDriverPlugin APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QPSQLDriverPlugin APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::QPSQLDriverPlugin APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QPSQLDriverPlugin_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::QSQLiteDriverPlugin #############

        set(qt_Qt5_QSQLiteDriverPlugin_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_QSQLiteDriverPlugin_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_QSQLiteDriverPlugin_FRAMEWORKS_RELEASE}" "${qt_Qt5_QSQLiteDriverPlugin_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_QSQLiteDriverPlugin_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_QSQLiteDriverPlugin_DEPS_TARGET)
            add_library(qt_Qt5_QSQLiteDriverPlugin_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_QSQLiteDriverPlugin_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_QSQLiteDriverPlugin_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_QSQLiteDriverPlugin_LIBS_RELEASE}"
                              "${qt_Qt5_QSQLiteDriverPlugin_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_QSQLiteDriverPlugin_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_QSQLiteDriverPlugin_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_QSQLiteDriverPlugin_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_QSQLiteDriverPlugin_DEPS_TARGET
                              qt_Qt5_QSQLiteDriverPlugin_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_QSQLiteDriverPlugin"
                              "${qt_Qt5_QSQLiteDriverPlugin_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::QSQLiteDriverPlugin
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_QSQLiteDriverPlugin_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::QSQLiteDriverPlugin
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_QSQLiteDriverPlugin_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::QSQLiteDriverPlugin APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::QSQLiteDriverPlugin APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QSQLiteDriverPlugin APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::QSQLiteDriverPlugin APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::QSQLiteDriverPlugin APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_QSQLiteDriverPlugin_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::Gui #############

        set(qt_Qt5_Gui_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Gui_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Gui_FRAMEWORKS_RELEASE}" "${qt_Qt5_Gui_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Gui_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Gui_DEPS_TARGET)
            add_library(qt_Qt5_Gui_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Gui_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Gui_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Gui_LIBS_RELEASE}"
                              "${qt_Qt5_Gui_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Gui_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Gui_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Gui_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Gui_DEPS_TARGET
                              qt_Qt5_Gui_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Gui"
                              "${qt_Qt5_Gui_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Gui
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_Gui_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Gui
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Gui_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::Gui APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::Gui APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Gui APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Gui APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::Gui APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Gui_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::LinguistTools #############

        set(qt_Qt5_LinguistTools_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_LinguistTools_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_LinguistTools_FRAMEWORKS_RELEASE}" "${qt_Qt5_LinguistTools_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_LinguistTools_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_LinguistTools_DEPS_TARGET)
            add_library(qt_Qt5_LinguistTools_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_LinguistTools_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_LinguistTools_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_LinguistTools_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_LinguistTools_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_LinguistTools_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_LinguistTools_LIBS_RELEASE}"
                              "${qt_Qt5_LinguistTools_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_LinguistTools_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_LinguistTools_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_LinguistTools_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_LinguistTools_DEPS_TARGET
                              qt_Qt5_LinguistTools_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_LinguistTools"
                              "${qt_Qt5_LinguistTools_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::LinguistTools
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_LinguistTools_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_LinguistTools_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_LinguistTools_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::LinguistTools
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_LinguistTools_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::LinguistTools APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_LinguistTools_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::LinguistTools APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_LinguistTools_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::LinguistTools APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_LinguistTools_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::LinguistTools APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_LinguistTools_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::LinguistTools APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_LinguistTools_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::WinMain #############

        set(qt_Qt5_WinMain_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_WinMain_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_WinMain_FRAMEWORKS_RELEASE}" "${qt_Qt5_WinMain_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_WinMain_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_WinMain_DEPS_TARGET)
            add_library(qt_Qt5_WinMain_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_WinMain_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_WinMain_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_WinMain_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_WinMain_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_WinMain_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_WinMain_LIBS_RELEASE}"
                              "${qt_Qt5_WinMain_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_WinMain_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_WinMain_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_WinMain_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_WinMain_DEPS_TARGET
                              qt_Qt5_WinMain_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_WinMain"
                              "${qt_Qt5_WinMain_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::WinMain
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_WinMain_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_WinMain_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_WinMain_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::WinMain
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_WinMain_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::WinMain APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_WinMain_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::WinMain APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_WinMain_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::WinMain APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_WinMain_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::WinMain APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_WinMain_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::WinMain APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_WinMain_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT Qt5::Core #############

        set(qt_Qt5_Core_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(qt_Qt5_Core_FRAMEWORKS_FOUND_RELEASE "${qt_Qt5_Core_FRAMEWORKS_RELEASE}" "${qt_Qt5_Core_FRAMEWORK_DIRS_RELEASE}")

        set(qt_Qt5_Core_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET qt_Qt5_Core_DEPS_TARGET)
            add_library(qt_Qt5_Core_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET qt_Qt5_Core_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Core_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Core_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Core_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'qt_Qt5_Core_DEPS_TARGET' to all of them
        conan_package_library_targets("${qt_Qt5_Core_LIBS_RELEASE}"
                              "${qt_Qt5_Core_LIB_DIRS_RELEASE}"
                              "${qt_Qt5_Core_BIN_DIRS_RELEASE}" # package_bindir
                              "${qt_Qt5_Core_LIBRARY_TYPE_RELEASE}"
                              "${qt_Qt5_Core_IS_HOST_WINDOWS_RELEASE}"
                              qt_Qt5_Core_DEPS_TARGET
                              qt_Qt5_Core_LIBRARIES_TARGETS
                              "_RELEASE"
                              "qt_Qt5_Core"
                              "${qt_Qt5_Core_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Qt5::Core
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${qt_Qt5_Core_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${qt_Qt5_Core_LIBRARIES_TARGETS}>
                     )

        if("${qt_Qt5_Core_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Qt5::Core
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         qt_Qt5_Core_DEPS_TARGET)
        endif()

        set_property(TARGET Qt5::Core APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Core_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET Qt5::Core APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Core_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Core APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${qt_Qt5_Core_LIB_DIRS_RELEASE}>)
        set_property(TARGET Qt5::Core APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Core_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET Qt5::Core APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${qt_Qt5_Core_COMPILE_OPTIONS_RELEASE}>)


    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::MultimediaQuick)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::QuickTemplates2)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::QuickControls2)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::QuickShapes)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::QuickWidgets)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Designer)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::UiTools)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Quick)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::MultimediaWidgets)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Help)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::UiPlugin)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::QmlWorkerScript)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::QmlImportScanner)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::QmlModels)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::QWindowsVistaStylePlugin)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::QWindowsIntegrationPlugin)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::PrintSupport)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Multimedia)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::QuickTest)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Qml)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::OpenGLExtensions)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::OpenGL)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::WindowsUIAutomationSupport)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Widgets)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::AccessibilitySupport)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::ThemeSupport)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::FontDatabaseSupport)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::EventDispatcherSupport)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::QWindowsAudioPlugin)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::DSServicePlugin)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::AudioCaptureServicePlugin)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::QM3uPlaylistPlugin)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Xml)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Concurrent)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Test)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Sql)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Network)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::QPSQLDriverPlugin)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::QSQLiteDriverPlugin)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Gui)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::LinguistTools)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::WinMain)
    set_property(TARGET qt::qt APPEND PROPERTY INTERFACE_LINK_LIBRARIES Qt5::Core)

########## For the modules (FindXXX)
set(qt_LIBRARIES_RELEASE qt::qt)
