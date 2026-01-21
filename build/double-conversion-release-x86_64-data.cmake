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
set(double-conversion_PACKAGE_FOLDER_RELEASE "C:/Users/Egor/.conan2/p/doubl397789b873e66/p")
set(double-conversion_BUILD_MODULES_PATHS_RELEASE )


set(double-conversion_INCLUDE_DIRS_RELEASE )
set(double-conversion_RES_DIRS_RELEASE )
set(double-conversion_DEFINITIONS_RELEASE )
set(double-conversion_SHARED_LINK_FLAGS_RELEASE )
set(double-conversion_EXE_LINK_FLAGS_RELEASE )
set(double-conversion_OBJECTS_RELEASE )
set(double-conversion_COMPILE_DEFINITIONS_RELEASE )
set(double-conversion_COMPILE_OPTIONS_C_RELEASE )
set(double-conversion_COMPILE_OPTIONS_CXX_RELEASE )
set(double-conversion_LIB_DIRS_RELEASE "${double-conversion_PACKAGE_FOLDER_RELEASE}/lib")
set(double-conversion_BIN_DIRS_RELEASE )
set(double-conversion_LIBRARY_TYPE_RELEASE STATIC)
set(double-conversion_IS_HOST_WINDOWS_RELEASE 1)
set(double-conversion_LIBS_RELEASE double-conversion)
set(double-conversion_SYSTEM_LIBS_RELEASE )
set(double-conversion_FRAMEWORK_DIRS_RELEASE )
set(double-conversion_FRAMEWORKS_RELEASE )
set(double-conversion_BUILD_DIRS_RELEASE )
set(double-conversion_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(double-conversion_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${double-conversion_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${double-conversion_COMPILE_OPTIONS_C_RELEASE}>")
set(double-conversion_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${double-conversion_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${double-conversion_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${double-conversion_EXE_LINK_FLAGS_RELEASE}>")


set(double-conversion_COMPONENTS_RELEASE )