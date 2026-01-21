# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(md4c_FRAMEWORKS_FOUND_DEBUG "") # Will be filled later
conan_find_apple_frameworks(md4c_FRAMEWORKS_FOUND_DEBUG "${md4c_FRAMEWORKS_DEBUG}" "${md4c_FRAMEWORK_DIRS_DEBUG}")

set(md4c_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET md4c_DEPS_TARGET)
    add_library(md4c_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET md4c_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Debug>:${md4c_FRAMEWORKS_FOUND_DEBUG}>
             $<$<CONFIG:Debug>:${md4c_SYSTEM_LIBS_DEBUG}>
             $<$<CONFIG:Debug>:md4c::md4c>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### md4c_DEPS_TARGET to all of them
conan_package_library_targets("${md4c_LIBS_DEBUG}"    # libraries
                              "${md4c_LIB_DIRS_DEBUG}" # package_libdir
                              "${md4c_BIN_DIRS_DEBUG}" # package_bindir
                              "${md4c_LIBRARY_TYPE_DEBUG}"
                              "${md4c_IS_HOST_WINDOWS_DEBUG}"
                              md4c_DEPS_TARGET
                              md4c_LIBRARIES_TARGETS  # out_libraries_targets
                              "_DEBUG"
                              "md4c"    # package_name
                              "${md4c_NO_SONAME_MODE_DEBUG}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${md4c_BUILD_DIRS_DEBUG} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES Debug ########################################

    ########## COMPONENT md4c::md4c-html #############

        set(md4c_md4c_md4c-html_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(md4c_md4c_md4c-html_FRAMEWORKS_FOUND_DEBUG "${md4c_md4c_md4c-html_FRAMEWORKS_DEBUG}" "${md4c_md4c_md4c-html_FRAMEWORK_DIRS_DEBUG}")

        set(md4c_md4c_md4c-html_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET md4c_md4c_md4c-html_DEPS_TARGET)
            add_library(md4c_md4c_md4c-html_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET md4c_md4c_md4c-html_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c-html_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c-html_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c-html_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'md4c_md4c_md4c-html_DEPS_TARGET' to all of them
        conan_package_library_targets("${md4c_md4c_md4c-html_LIBS_DEBUG}"
                              "${md4c_md4c_md4c-html_LIB_DIRS_DEBUG}"
                              "${md4c_md4c_md4c-html_BIN_DIRS_DEBUG}" # package_bindir
                              "${md4c_md4c_md4c-html_LIBRARY_TYPE_DEBUG}"
                              "${md4c_md4c_md4c-html_IS_HOST_WINDOWS_DEBUG}"
                              md4c_md4c_md4c-html_DEPS_TARGET
                              md4c_md4c_md4c-html_LIBRARIES_TARGETS
                              "_DEBUG"
                              "md4c_md4c_md4c-html"
                              "${md4c_md4c_md4c-html_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET md4c::md4c-html
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c-html_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c-html_LIBRARIES_TARGETS}>
                     )

        if("${md4c_md4c_md4c-html_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET md4c::md4c-html
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         md4c_md4c_md4c-html_DEPS_TARGET)
        endif()

        set_property(TARGET md4c::md4c-html APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c-html_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET md4c::md4c-html APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c-html_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET md4c::md4c-html APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c-html_LIB_DIRS_DEBUG}>)
        set_property(TARGET md4c::md4c-html APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c-html_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET md4c::md4c-html APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c-html_COMPILE_OPTIONS_DEBUG}>)


    ########## COMPONENT md4c::md4c #############

        set(md4c_md4c_md4c_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(md4c_md4c_md4c_FRAMEWORKS_FOUND_DEBUG "${md4c_md4c_md4c_FRAMEWORKS_DEBUG}" "${md4c_md4c_md4c_FRAMEWORK_DIRS_DEBUG}")

        set(md4c_md4c_md4c_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET md4c_md4c_md4c_DEPS_TARGET)
            add_library(md4c_md4c_md4c_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET md4c_md4c_md4c_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'md4c_md4c_md4c_DEPS_TARGET' to all of them
        conan_package_library_targets("${md4c_md4c_md4c_LIBS_DEBUG}"
                              "${md4c_md4c_md4c_LIB_DIRS_DEBUG}"
                              "${md4c_md4c_md4c_BIN_DIRS_DEBUG}" # package_bindir
                              "${md4c_md4c_md4c_LIBRARY_TYPE_DEBUG}"
                              "${md4c_md4c_md4c_IS_HOST_WINDOWS_DEBUG}"
                              md4c_md4c_md4c_DEPS_TARGET
                              md4c_md4c_md4c_LIBRARIES_TARGETS
                              "_DEBUG"
                              "md4c_md4c_md4c"
                              "${md4c_md4c_md4c_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET md4c::md4c
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c_LIBRARIES_TARGETS}>
                     )

        if("${md4c_md4c_md4c_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET md4c::md4c
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         md4c_md4c_md4c_DEPS_TARGET)
        endif()

        set_property(TARGET md4c::md4c APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET md4c::md4c APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET md4c::md4c APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c_LIB_DIRS_DEBUG}>)
        set_property(TARGET md4c::md4c APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET md4c::md4c APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${md4c_md4c_md4c_COMPILE_OPTIONS_DEBUG}>)


    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET md4c::md4c-html APPEND PROPERTY INTERFACE_LINK_LIBRARIES md4c::md4c-html)
    set_property(TARGET md4c::md4c-html APPEND PROPERTY INTERFACE_LINK_LIBRARIES md4c::md4c)

########## For the modules (FindXXX)
set(md4c_LIBRARIES_DEBUG md4c::md4c-html)
