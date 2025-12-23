cmake_minimum_required(VERSION 3.10)

project(DirectXLearning)

# Set C++ standard
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Check if we're on Windows
if(NOT WIN32)
    message(FATAL_ERROR "This project requires Windows and DirectX 11")
endif()

# Source files
set(SOURCES
    src/main.cpp
)

# Create executable
add_executable(DirectXLearning WIN32 ${SOURCES})

# Link DirectX 11 libraries
target_link_libraries(DirectXLearning
    d3d11.lib
    d3dcompiler.lib
    dxgi.lib
)

# Set output directory
set_target_properties(DirectXLearning PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)

# Copy shaders to output directory
add_custom_command(TARGET DirectXLearning POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_directory
    ${CMAKE_SOURCE_DIR}/shaders
    $<TARGET_FILE_DIR:DirectXLearning>/shaders
    COMMENT "Copying shaders to output directory"
)
