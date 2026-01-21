########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND md4c_COMPONENT_NAMES md4c::md4c md4c::md4c-html)
list(REMOVE_DUPLICATES md4c_COMPONENT_NAMES)
if(DEFINED md4c_FIND_DEPENDENCY_NAMES)
  list(APPEND md4c_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES md4c_FIND_DEPENDENCY_NAMES)
else()
  set(md4c_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(md4c_PACKAGE_FOLDER_DEBUG "C:/Users/Egor/.conan2/p/b/md4cb905696ddd3f1/p")
set(md4c_BUILD_MODULES_PATHS_DEBUG )


set(md4c_INCLUDE_DIRS_DEBUG )
set(md4c_RES_DIRS_DEBUG )
set(md4c_DEFINITIONS_DEBUG )
set(md4c_SHARED_LINK_FLAGS_DEBUG )
set(md4c_EXE_LINK_FLAGS_DEBUG )
set(md4c_OBJECTS_DEBUG )
set(md4c_COMPILE_DEFINITIONS_DEBUG )
set(md4c_COMPILE_OPTIONS_C_DEBUG )
set(md4c_COMPILE_OPTIONS_CXX_DEBUG )
set(md4c_LIB_DIRS_DEBUG "${md4c_PACKAGE_FOLDER_DEBUG}/lib")
set(md4c_BIN_DIRS_DEBUG )
set(md4c_LIBRARY_TYPE_DEBUG STATIC)
set(md4c_IS_HOST_WINDOWS_DEBUG 1)
set(md4c_LIBS_DEBUG md4c-html md4c)
set(md4c_SYSTEM_LIBS_DEBUG )
set(md4c_FRAMEWORK_DIRS_DEBUG )
set(md4c_FRAMEWORKS_DEBUG )
set(md4c_BUILD_DIRS_DEBUG )
set(md4c_NO_SONAME_MODE_DEBUG FALSE)


# COMPOUND VARIABLES
set(md4c_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${md4c_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${md4c_COMPILE_OPTIONS_C_DEBUG}>")
set(md4c_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${md4c_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${md4c_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${md4c_EXE_LINK_FLAGS_DEBUG}>")


set(md4c_COMPONENTS_DEBUG md4c::md4c md4c::md4c-html)
########### COMPONENT md4c::md4c-html VARIABLES ############################################

set(md4c_md4c_md4c-html_INCLUDE_DIRS_DEBUG )
set(md4c_md4c_md4c-html_LIB_DIRS_DEBUG "${md4c_PACKAGE_FOLDER_DEBUG}/lib")
set(md4c_md4c_md4c-html_BIN_DIRS_DEBUG )
set(md4c_md4c_md4c-html_LIBRARY_TYPE_DEBUG STATIC)
set(md4c_md4c_md4c-html_IS_HOST_WINDOWS_DEBUG 1)
set(md4c_md4c_md4c-html_RES_DIRS_DEBUG )
set(md4c_md4c_md4c-html_DEFINITIONS_DEBUG )
set(md4c_md4c_md4c-html_OBJECTS_DEBUG )
set(md4c_md4c_md4c-html_COMPILE_DEFINITIONS_DEBUG )
set(md4c_md4c_md4c-html_COMPILE_OPTIONS_C_DEBUG "")
set(md4c_md4c_md4c-html_COMPILE_OPTIONS_CXX_DEBUG "")
set(md4c_md4c_md4c-html_LIBS_DEBUG md4c-html)
set(md4c_md4c_md4c-html_SYSTEM_LIBS_DEBUG )
set(md4c_md4c_md4c-html_FRAMEWORK_DIRS_DEBUG )
set(md4c_md4c_md4c-html_FRAMEWORKS_DEBUG )
set(md4c_md4c_md4c-html_DEPENDENCIES_DEBUG md4c::md4c)
set(md4c_md4c_md4c-html_SHARED_LINK_FLAGS_DEBUG )
set(md4c_md4c_md4c-html_EXE_LINK_FLAGS_DEBUG )
set(md4c_md4c_md4c-html_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(md4c_md4c_md4c-html_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${md4c_md4c_md4c-html_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${md4c_md4c_md4c-html_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${md4c_md4c_md4c-html_EXE_LINK_FLAGS_DEBUG}>
)
set(md4c_md4c_md4c-html_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${md4c_md4c_md4c-html_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${md4c_md4c_md4c-html_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT md4c::md4c VARIABLES ############################################

set(md4c_md4c_md4c_INCLUDE_DIRS_DEBUG )
set(md4c_md4c_md4c_LIB_DIRS_DEBUG "${md4c_PACKAGE_FOLDER_DEBUG}/lib")
set(md4c_md4c_md4c_BIN_DIRS_DEBUG )
set(md4c_md4c_md4c_LIBRARY_TYPE_DEBUG STATIC)
set(md4c_md4c_md4c_IS_HOST_WINDOWS_DEBUG 1)
set(md4c_md4c_md4c_RES_DIRS_DEBUG )
set(md4c_md4c_md4c_DEFINITIONS_DEBUG )
set(md4c_md4c_md4c_OBJECTS_DEBUG )
set(md4c_md4c_md4c_COMPILE_DEFINITIONS_DEBUG )
set(md4c_md4c_md4c_COMPILE_OPTIONS_C_DEBUG "")
set(md4c_md4c_md4c_COMPILE_OPTIONS_CXX_DEBUG "")
set(md4c_md4c_md4c_LIBS_DEBUG md4c)
set(md4c_md4c_md4c_SYSTEM_LIBS_DEBUG )
set(md4c_md4c_md4c_FRAMEWORK_DIRS_DEBUG )
set(md4c_md4c_md4c_FRAMEWORKS_DEBUG )
set(md4c_md4c_md4c_DEPENDENCIES_DEBUG )
set(md4c_md4c_md4c_SHARED_LINK_FLAGS_DEBUG )
set(md4c_md4c_md4c_EXE_LINK_FLAGS_DEBUG )
set(md4c_md4c_md4c_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(md4c_md4c_md4c_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${md4c_md4c_md4c_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${md4c_md4c_md4c_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${md4c_md4c_md4c_EXE_LINK_FLAGS_DEBUG}>
)
set(md4c_md4c_md4c_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${md4c_md4c_md4c_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${md4c_md4c_md4c_COMPILE_OPTIONS_C_DEBUG}>")