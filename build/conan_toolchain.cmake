# Conan automatically generated toolchain file
# DO NOT EDIT MANUALLY, it will be overwritten

# Avoid including toolchain file several times (bad if appending to variables like
#   CMAKE_CXX_FLAGS. See https://github.com/android/ndk/issues/323
include_guard()
message(STATUS "Using Conan toolchain: ${CMAKE_CURRENT_LIST_FILE}")
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeToolchain' generator only works with CMake >= 3.15")
endif()

########## 'user_toolchain' block #############
# Include one or more CMake user toolchain from tools.cmake.cmaketoolchain:user_toolchain



########## 'generic_system' block #############
# Definition of system, platform and toolset


set(CMAKE_GENERATOR_PLATFORM "x64" CACHE STRING "" FORCE)

message(STATUS "Conan toolchain: CMAKE_GENERATOR_TOOLSET=v143")
set(CMAKE_GENERATOR_TOOLSET "v143" CACHE STRING "" FORCE)


########## 'compilers' block #############



########## 'libcxx' block #############
# Definition of libcxx from 'compiler.libcxx' setting, defining the
# right CXX_FLAGS for that libcxx



########## 'vs_runtime' block #############
# Definition of VS runtime CMAKE_MSVC_RUNTIME_LIBRARY, from settings build_type,
# compiler.runtime, compiler.runtime_type

cmake_policy(GET CMP0091 POLICY_CMP0091)
if(NOT "${POLICY_CMP0091}" STREQUAL NEW)
    message(FATAL_ERROR "The CMake policy CMP0091 must be NEW, but is '${POLICY_CMP0091}'")
endif()
message(STATUS "Conan toolchain: Setting CMAKE_MSVC_RUNTIME_LIBRARY=$<$<CONFIG:Release>:MultiThreadedDLL>$<$<CONFIG:Debug>:MultiThreadedDebug>")
set(CMAKE_MSVC_RUNTIME_LIBRARY "$<$<CONFIG:Release>:MultiThreadedDLL>$<$<CONFIG:Debug>:MultiThreadedDebug>")


########## 'vs_debugger_environment' block #############
# Definition of CMAKE_VS_DEBUGGER_ENVIRONMENT from "bindirs" folders of dependencies
# for execution of applications with shared libraries within the VS IDE

# if the file exists it will be loaded by FindFiles block and the variable defined there
if(NOT EXISTS "${CMAKE_CURRENT_LIST_DIR}/conan_cmakedeps_paths.cmake")
# This variable requires CMake>=3.27 to work
set(CMAKE_VS_DEBUGGER_ENVIRONMENT "PATH=$<$<CONFIG:Release>:C:/Users/Egor/.conan2/p/b/qtac63b13c3077a/p/bin;C:/Users/Egor/.conan2/p/opensc763747fb2194/p/bin;C:/Users/Egor/.conan2/p/pcre2418bd44ff7697/p/bin;C:/Users/Egor/.conan2/p/doubl397789b873e66/p/bin;C:/Users/Egor/.conan2/p/freet6b2bf47829fb9/p/bin;C:/Users/Egor/.conan2/p/bzip25b22578e1ff91/p/bin;C:/Users/Egor/.conan2/p/brotle5680f805c2b0/p/bin;C:/Users/Egor/.conan2/p/libjp24d144e05a2e3/p/bin;C:/Users/Egor/.conan2/p/libpna8dedcf37a39b/p/bin;C:/Users/Egor/.conan2/p/zlibfaa27933c9bf2/p/bin;C:/Users/Egor/.conan2/p/sqlitb5ab857f87dc0/p/bin;C:/Users/Egor/.conan2/p/libpq1cfa08a04c9c1/p/bin;C:/Users/Egor/.conan2/p/opena129ee283eb230/p/bin;C:/Users/Egor/.conan2/p/zstd0d23d12d61246/p/bin;C:/Users/Egor/.conan2/p/md4c668d8d4f42f4f/p/bin>$<$<CONFIG:Debug>:C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/bin;C:/Users/Egor/.conan2/p/b/opensd1eb8b8c3da12/p/bin;C:/Users/Egor/.conan2/p/b/pcre29fe2b592b96b8/p/bin;C:/Users/Egor/.conan2/p/b/doubla0e383680ec81/p/bin;C:/Users/Egor/.conan2/p/b/freetf783a5ac05590/p/bin;C:/Users/Egor/.conan2/p/b/bzip2faf72c1040416/p/bin;C:/Users/Egor/.conan2/p/b/brotlc4fc86a5181ad/p/bin;C:/Users/Egor/.conan2/p/b/libjp1e21410c3adb2/p/bin;C:/Users/Egor/.conan2/p/b/libpn295d5eeb6159d/p/bin;C:/Users/Egor/.conan2/p/b/zlib7238a9d454aee/p/bin;C:/Users/Egor/.conan2/p/b/sqlit4ba297c41bc41/p/bin;C:/Users/Egor/.conan2/p/b/libpq169df82d61cf5/p/bin;C:/Users/Egor/.conan2/p/b/openaca4e2dbbaa38b/p/bin;C:/Users/Egor/.conan2/p/b/zstdc694c2f8019b0/p/bin;C:/Users/Egor/.conan2/p/b/md4cb905696ddd3f1/p/bin>;%PATH%")
endif()


########## 'cppstd' block #############
# Define the C++ and C standards from 'compiler.cppstd' and 'compiler.cstd'

function(conan_modify_std_watch variable access value current_list_file stack)
    set(conan_watched_std_variable "14")
    if (${variable} STREQUAL "CMAKE_C_STANDARD")
        set(conan_watched_std_variable "")
    endif()
    if ("${access}" STREQUAL "MODIFIED_ACCESS" AND NOT "${value}" STREQUAL "${conan_watched_std_variable}")
        message(STATUS "Warning: Standard ${variable} value defined in conan_toolchain.cmake to ${conan_watched_std_variable} has been modified to ${value} by ${current_list_file}")
    endif()
    unset(conan_watched_std_variable)
endfunction()

message(STATUS "Conan toolchain: C++ Standard 14 with extensions OFF")
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
variable_watch(CMAKE_CXX_STANDARD conan_modify_std_watch)


########## 'parallel' block #############
# Define VS paralell build /MP flags

string(APPEND CONAN_CXX_FLAGS " /MP12")
string(APPEND CONAN_C_FLAGS " /MP12")


########## 'extra_flags' block #############

# Conan conf flags start: Release
# Conan conf flags end
# Include extra C++, C and linker flags from configuration tools.build:<type>flags
# and from CMakeToolchain.extra_<type>_flags

# Conan conf flags start: Debug
# Conan conf flags end


########## 'cmake_flags_init' block #############
# Define CMAKE_<XXX>_FLAGS from CONAN_<XXX>_FLAGS

foreach(config IN LISTS CMAKE_CONFIGURATION_TYPES)
    string(TOUPPER ${config} config)
    if(DEFINED CONAN_CXX_FLAGS_${config})
      string(APPEND CMAKE_CXX_FLAGS_${config}_INIT " ${CONAN_CXX_FLAGS_${config}}")
    endif()
    if(DEFINED CONAN_C_FLAGS_${config})
      string(APPEND CMAKE_C_FLAGS_${config}_INIT " ${CONAN_C_FLAGS_${config}}")
    endif()
    if(DEFINED CONAN_SHARED_LINKER_FLAGS_${config})
      string(APPEND CMAKE_SHARED_LINKER_FLAGS_${config}_INIT " ${CONAN_SHARED_LINKER_FLAGS_${config}}")
    endif()
    if(DEFINED CONAN_EXE_LINKER_FLAGS_${config})
      string(APPEND CMAKE_EXE_LINKER_FLAGS_${config}_INIT " ${CONAN_EXE_LINKER_FLAGS_${config}}")
    endif()
endforeach()

if(DEFINED CONAN_CXX_FLAGS)
  string(APPEND CMAKE_CXX_FLAGS_INIT " ${CONAN_CXX_FLAGS}")
endif()
if(DEFINED CONAN_C_FLAGS)
  string(APPEND CMAKE_C_FLAGS_INIT " ${CONAN_C_FLAGS}")
endif()
if(DEFINED CONAN_SHARED_LINKER_FLAGS)
  string(APPEND CMAKE_SHARED_LINKER_FLAGS_INIT " ${CONAN_SHARED_LINKER_FLAGS}")
endif()
if(DEFINED CONAN_EXE_LINKER_FLAGS)
  string(APPEND CMAKE_EXE_LINKER_FLAGS_INIT " ${CONAN_EXE_LINKER_FLAGS}")
endif()
if(DEFINED CONAN_OBJCXX_FLAGS)
  string(APPEND CMAKE_OBJCXX_FLAGS_INIT " ${CONAN_OBJCXX_FLAGS}")
endif()
if(DEFINED CONAN_OBJC_FLAGS)
  string(APPEND CMAKE_OBJC_FLAGS_INIT " ${CONAN_OBJC_FLAGS}")
endif()


########## 'extra_variables' block #############
# Definition of extra CMake variables from tools.cmake.cmaketoolchain:extra_variables



########## 'try_compile' block #############
# Blocks after this one will not be added when running CMake try/checks
get_property( _CMAKE_IN_TRY_COMPILE GLOBAL PROPERTY IN_TRY_COMPILE )
if(_CMAKE_IN_TRY_COMPILE)
    message(STATUS "Running toolchain IN_TRY_COMPILE")
    return()
endif()


########## 'find_paths' block #############
# Define paths to find packages, programs, libraries, etc.
if(EXISTS "${CMAKE_CURRENT_LIST_DIR}/conan_cmakedeps_paths.cmake")
  message(STATUS "Conan toolchain: Including CMakeDeps generated conan_cmakedeps_paths.cmake")
  include("${CMAKE_CURRENT_LIST_DIR}/conan_cmakedeps_paths.cmake")
else()

set(CMAKE_FIND_PACKAGE_PREFER_CONFIG ON)

# Definition of CMAKE_MODULE_PATH
list(PREPEND CMAKE_MODULE_PATH "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/lib/cmake/Qt5Qml" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/lib/cmake/Qt5Widgets" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/lib/cmake/Qt5Gui" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/lib/cmake/Qt5LinguistTools" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/bin/archdatadir/bin" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/lib/cmake/Qt5Core" "C:/Users/Egor/.conan2/p/b/opensd1eb8b8c3da12/p/lib/cmake")
# the generators folder (where conan generates files, like this toolchain)
list(PREPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})

# Definition of CMAKE_PREFIX_PATH, CMAKE_XXXXX_PATH
# The explicitly defined "builddirs" of "host" context dependencies must be in PREFIX_PATH
list(PREPEND CMAKE_PREFIX_PATH "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/lib/cmake/Qt5Qml" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/lib/cmake/Qt5Widgets" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/lib/cmake/Qt5Gui" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/lib/cmake/Qt5LinguistTools" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/bin/archdatadir/bin" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/lib/cmake/Qt5Core" "C:/Users/Egor/.conan2/p/b/opensd1eb8b8c3da12/p/lib/cmake")
# The Conan local "generators" folder, where this toolchain is saved.
list(PREPEND CMAKE_PREFIX_PATH ${CMAKE_CURRENT_LIST_DIR} )
list(PREPEND CMAKE_LIBRARY_PATH "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/lib" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/bin/archdatadir/plugins/styles" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/bin/archdatadir/plugins/platforms" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/bin/archdatadir/plugins/audio" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/bin/archdatadir/plugins/mediaservice" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/bin/archdatadir/plugins/playlistformats" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/bin/archdatadir/plugins/sqldrivers" "C:/Users/Egor/.conan2/p/b/opensd1eb8b8c3da12/p/lib" "C:/Users/Egor/.conan2/p/b/pcre29fe2b592b96b8/p/lib" "C:/Users/Egor/.conan2/p/b/doubla0e383680ec81/p/lib" "C:/Users/Egor/.conan2/p/b/freetf783a5ac05590/p/lib" "C:/Users/Egor/.conan2/p/b/bzip2faf72c1040416/p/lib" "C:/Users/Egor/.conan2/p/b/brotlc4fc86a5181ad/p/lib" "C:/Users/Egor/.conan2/p/b/libjp1e21410c3adb2/p/lib" "C:/Users/Egor/.conan2/p/b/libpn295d5eeb6159d/p/lib" "C:/Users/Egor/.conan2/p/b/zlib7238a9d454aee/p/lib" "C:/Users/Egor/.conan2/p/b/sqlit4ba297c41bc41/p/lib" "C:/Users/Egor/.conan2/p/b/libpq169df82d61cf5/p/lib" "C:/Users/Egor/.conan2/p/b/openaca4e2dbbaa38b/p/lib" "C:/Users/Egor/.conan2/p/b/zstdc694c2f8019b0/p/lib" "C:/Users/Egor/.conan2/p/b/md4cb905696ddd3f1/p/lib")
list(PREPEND CMAKE_INCLUDE_PATH "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtMultimediaQuick" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtQuickTemplates2" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtQuickControls2" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtQuickShapes" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtQuickWidgets" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtDesigner" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtUiTools" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtQuick" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtMultimediaWidgets" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtHelp" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtUiPlugin" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtQmlWorkerScript" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtQmlModels" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtPrintSupport" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtMultimedia" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtQuickTest" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtQml" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtOpenGLExtensions" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtOpenGL" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtWindowsUIAutomationSupport" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtWidgets" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtAccessibilitySupport" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtThemeSupport" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtFontDatabaseSupport" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtEventDispatcherSupport" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtXml" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtConcurrent" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtTest" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtSql" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtNetwork" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtGui" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/include/QtCore" "C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/bin/archdatadir/mkspecs/win32-msvc" "C:/Users/Egor/.conan2/p/b/opensd1eb8b8c3da12/p/include" "C:/Users/Egor/.conan2/p/b/pcre29fe2b592b96b8/p/include" "C:/Users/Egor/.conan2/p/b/doubla0e383680ec81/p/include" "C:/Users/Egor/.conan2/p/b/freetf783a5ac05590/p/include" "C:/Users/Egor/.conan2/p/b/freetf783a5ac05590/p/include/freetype2" "C:/Users/Egor/.conan2/p/b/bzip2faf72c1040416/p/include" "C:/Users/Egor/.conan2/p/b/brotlc4fc86a5181ad/p/include" "C:/Users/Egor/.conan2/p/b/libjp1e21410c3adb2/p/include" "C:/Users/Egor/.conan2/p/b/libpn295d5eeb6159d/p/include" "C:/Users/Egor/.conan2/p/b/zlib7238a9d454aee/p/include" "C:/Users/Egor/.conan2/p/b/sqlit4ba297c41bc41/p/include" "C:/Users/Egor/.conan2/p/b/libpq169df82d61cf5/p/include" "C:/Users/Egor/.conan2/p/b/openaca4e2dbbaa38b/p/include" "C:/Users/Egor/.conan2/p/b/openaca4e2dbbaa38b/p/include/AL" "C:/Users/Egor/.conan2/p/b/zstdc694c2f8019b0/p/include" "C:/Users/Egor/.conan2/p/b/md4cb905696ddd3f1/p/include")
set(CONAN_RUNTIME_LIB_DIRS "$<$<CONFIG:Release>:C:/Users/Egor/.conan2/p/b/qtac63b13c3077a/p/bin>" "$<$<CONFIG:Release>:C:/Users/Egor/.conan2/p/opensc763747fb2194/p/bin>" "$<$<CONFIG:Release>:C:/Users/Egor/.conan2/p/pcre2418bd44ff7697/p/bin>" "$<$<CONFIG:Release>:C:/Users/Egor/.conan2/p/doubl397789b873e66/p/bin>" "$<$<CONFIG:Release>:C:/Users/Egor/.conan2/p/freet6b2bf47829fb9/p/bin>" "$<$<CONFIG:Release>:C:/Users/Egor/.conan2/p/bzip25b22578e1ff91/p/bin>" "$<$<CONFIG:Release>:C:/Users/Egor/.conan2/p/brotle5680f805c2b0/p/bin>" "$<$<CONFIG:Release>:C:/Users/Egor/.conan2/p/libjp24d144e05a2e3/p/bin>" "$<$<CONFIG:Release>:C:/Users/Egor/.conan2/p/libpna8dedcf37a39b/p/bin>" "$<$<CONFIG:Release>:C:/Users/Egor/.conan2/p/zlibfaa27933c9bf2/p/bin>" "$<$<CONFIG:Release>:C:/Users/Egor/.conan2/p/sqlitb5ab857f87dc0/p/bin>" "$<$<CONFIG:Release>:C:/Users/Egor/.conan2/p/libpq1cfa08a04c9c1/p/bin>" "$<$<CONFIG:Release>:C:/Users/Egor/.conan2/p/opena129ee283eb230/p/bin>" "$<$<CONFIG:Release>:C:/Users/Egor/.conan2/p/zstd0d23d12d61246/p/bin>" "$<$<CONFIG:Release>:C:/Users/Egor/.conan2/p/md4c668d8d4f42f4f/p/bin>" "$<$<CONFIG:Debug>:C:/Users/Egor/.conan2/p/b/qtd96b6dbe09793/p/bin>" "$<$<CONFIG:Debug>:C:/Users/Egor/.conan2/p/b/opensd1eb8b8c3da12/p/bin>" "$<$<CONFIG:Debug>:C:/Users/Egor/.conan2/p/b/pcre29fe2b592b96b8/p/bin>" "$<$<CONFIG:Debug>:C:/Users/Egor/.conan2/p/b/doubla0e383680ec81/p/bin>" "$<$<CONFIG:Debug>:C:/Users/Egor/.conan2/p/b/freetf783a5ac05590/p/bin>" "$<$<CONFIG:Debug>:C:/Users/Egor/.conan2/p/b/bzip2faf72c1040416/p/bin>" "$<$<CONFIG:Debug>:C:/Users/Egor/.conan2/p/b/brotlc4fc86a5181ad/p/bin>" "$<$<CONFIG:Debug>:C:/Users/Egor/.conan2/p/b/libjp1e21410c3adb2/p/bin>" "$<$<CONFIG:Debug>:C:/Users/Egor/.conan2/p/b/libpn295d5eeb6159d/p/bin>" "$<$<CONFIG:Debug>:C:/Users/Egor/.conan2/p/b/zlib7238a9d454aee/p/bin>" "$<$<CONFIG:Debug>:C:/Users/Egor/.conan2/p/b/sqlit4ba297c41bc41/p/bin>" "$<$<CONFIG:Debug>:C:/Users/Egor/.conan2/p/b/libpq169df82d61cf5/p/bin>" "$<$<CONFIG:Debug>:C:/Users/Egor/.conan2/p/b/openaca4e2dbbaa38b/p/bin>" "$<$<CONFIG:Debug>:C:/Users/Egor/.conan2/p/b/zstdc694c2f8019b0/p/bin>" "$<$<CONFIG:Debug>:C:/Users/Egor/.conan2/p/b/md4cb905696ddd3f1/p/bin>" )

endif()


########## 'pkg_config' block #############
# Define pkg-config from 'tools.gnu:pkg_config' executable and paths

if (DEFINED ENV{PKG_CONFIG_PATH})
set(ENV{PKG_CONFIG_PATH} "${CMAKE_CURRENT_LIST_DIR};$ENV{PKG_CONFIG_PATH}")
else()
set(ENV{PKG_CONFIG_PATH} "${CMAKE_CURRENT_LIST_DIR};")
endif()


########## 'rpath' block #############
# Defining CMAKE_SKIP_RPATH



########## 'output_dirs' block #############
# Definition of CMAKE_INSTALL_XXX folders

set(CMAKE_INSTALL_BINDIR "bin")
set(CMAKE_INSTALL_SBINDIR "bin")
set(CMAKE_INSTALL_LIBEXECDIR "bin")
set(CMAKE_INSTALL_LIBDIR "lib")
set(CMAKE_INSTALL_INCLUDEDIR "include")
set(CMAKE_INSTALL_OLDINCLUDEDIR "include")


########## 'variables' block #############
# Definition of CMake variables from CMakeToolchain.variables values

# Variables
# Variables  per configuration



########## 'preprocessor' block #############
# Preprocessor definitions from CMakeToolchain.preprocessor_definitions values

# Preprocessor definitions per configuration



if(CMAKE_POLICY_DEFAULT_CMP0091)  # Avoid unused and not-initialized warnings
endif()
