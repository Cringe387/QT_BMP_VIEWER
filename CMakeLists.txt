cmake_minimum_required(VERSION 3.5)

project(BMPViewer VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

find_package(Qt5 REQUIRED COMPONENTS Core Gui Widgets)

set(PROJECT_SOURCES
    main.cpp
    mainwindow.cpp
    mainwindow.h
    bmpprocessor.cpp
    bmpprocessor.h
)

add_executable(BMPViewer ${PROJECT_SOURCES})

target_compile_definitions(BMPViewer PRIVATE QT_STATICPLUGIN)

target_link_libraries(BMPViewer
    Qt5::Core
    Qt5::Gui
    Qt5::Widgets
)

if(WIN32)
    set_target_properties(BMPViewer PROPERTIES
        WIN32_EXECUTABLE TRUE
    )
    
    find_package(Qt5 COMPONENTS QWindowsIntegrationPlugin QUIET)
    if(TARGET Qt5::QWindowsIntegrationPlugin)
        target_link_libraries(BMPViewer Qt5::QWindowsIntegrationPlugin)
    endif()
    
    find_package(Qt5 COMPONENTS 
        EventDispatcherSupport 
        FontDatabaseSupport 
        ThemeSupport 
        QUIET
    )
    
    if(TARGET Qt5::EventDispatcherSupport)
        target_link_libraries(BMPViewer Qt5::EventDispatcherSupport)
    endif()
    
    if(TARGET Qt5::FontDatabaseSupport)
        target_link_libraries(BMPViewer Qt5::FontDatabaseSupport)
    endif()
    
    if(TARGET Qt5::ThemeSupport)
        target_link_libraries(BMPViewer Qt5::ThemeSupport)
    endif()
    
    target_link_libraries(BMPViewer
        dwmapi
        imm32
        uxtheme
        winmm
        wtsapi32
        version
        ws2_32
        netapi32
        userenv
    )
endif()