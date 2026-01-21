########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(double-conversion_COMPONENT_NAMES "")
if(DEFINED double-conversion_FIND_DEPENDENCY_NAMES)
  list(APPEND double-conversion_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES double-conversion_FIND_DEPENDENCY_NAMES)
else()
  set(double-conversion_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(double-conversion_PACKAGE_FOLDER_DEBUG "C:/Users/Egor/.conan2/p/b/doubla0e383680ec81/p")
set(double-conversion_BUILD_MODULES_PATHS_DEBUG )


set(double-conversion_INCLUDE_DIRS_DEBUG )
set(double-conversion_RES_DIRS_DEBUG )
set(double-conversion_DEFINITIONS_DEBUG )
set(double-conversion_SHARED_LINK_FLAGS_DEBUG )
set(double-conversion_EXE_LINK_FLAGS_DEBUG )
set(double-conversion_OBJECTS_DEBUG )
set(double-conversion_COMPILE_DEFINITIONS_DEBUG )
set(double-conversion_COMPILE_OPTIONS_C_DEBUG )
set(double-conversion_COMPILE_OPTIONS_CXX_DEBUG )
set(double-conversion_LIB_DIRS_DEBUG "${double-conversion_PACKAGE_FOLDER_DEBUG}/lib")
set(double-conversion_BIN_DIRS_DEBUG )
set(double-conversion_LIBRARY_TYPE_DEBUG STATIC)
set(double-conversion_IS_HOST_WINDOWS_DEBUG 1)
set(double-conversion_LIBS_DEBUG double-conversion)
set(double-conversion_SYSTEM_LIBS_DEBUG )
set(double-conversion_FRAMEWORK_DIRS_DEBUG )
set(double-conversion_FRAMEWORKS_DEBUG )
set(double-conversion_BUILD_DIRS_DEBUG )
set(double-conversion_NO_SONAME_MODE_DEBUG FALSE)


# COMPOUND VARIABLES
set(double-conversion_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${double-conversion_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${double-conversion_COMPILE_OPTIONS_C_DEBUG}>")
set(double-conversion_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${double-conversion_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${double-conversion_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${double-conversion_EXE_LINK_FLAGS_DEBUG}>")


set(double-conversion_COMPONENTS_DEBUG )