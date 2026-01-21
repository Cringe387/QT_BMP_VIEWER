# Load the debug and release variables
file(GLOB DATA_FILES "${CMAKE_CURRENT_LIST_DIR}/double-conversion-*-data.cmake")

foreach(f ${DATA_FILES})
    include(${f})
endforeach()

# Create the targets for all the components
foreach(_COMPONENT ${double-conversion_COMPONENT_NAMES} )
    if(NOT TARGET ${_COMPONENT})
        add_library(${_COMPONENT} INTERFACE IMPORTED)
        message(${double-conversion_MESSAGE_MODE} "Conan: Component target declared '${_COMPONENT}'")
    endif()
endforeach()

if(NOT TARGET double-conversion::double-conversion)
    add_library(double-conversion::double-conversion INTERFACE IMPORTED)
    message(${double-conversion_MESSAGE_MODE} "Conan: Target declared 'double-conversion::double-conversion'")
endif()
# Load the debug and release library finders
file(GLOB CONFIG_FILES "${CMAKE_CURRENT_LIST_DIR}/double-conversion-Target-*.cmake")

foreach(f ${CONFIG_FILES})
    include(${f})
endforeach()