########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(double-conversion_FIND_QUIETLY)
    set(double-conversion_MESSAGE_MODE VERBOSE)
else()
    set(double-conversion_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/double-conversionTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${double-conversion_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(double-conversion_VERSION_STRING "3.3.0")
set(double-conversion_INCLUDE_DIRS ${double-conversion_INCLUDE_DIRS_DEBUG} )
set(double-conversion_INCLUDE_DIR ${double-conversion_INCLUDE_DIRS_DEBUG} )
set(double-conversion_LIBRARIES ${double-conversion_LIBRARIES_DEBUG} )
set(double-conversion_DEFINITIONS ${double-conversion_DEFINITIONS_DEBUG} )


# Definition of extra CMake variables from cmake_extra_variables


# Only the last installed configuration BUILD_MODULES are included to avoid the collision
foreach(_BUILD_MODULE ${double-conversion_BUILD_MODULES_PATHS_DEBUG} )
    message(${double-conversion_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


