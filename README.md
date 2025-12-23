# DirectX 11 Learning

A learning project for DirectX 11 graphics programming on Windows.

## Description

This project provides a minimal DirectX 11 application template for learning and experimentation. It includes:

- Basic window creation and message handling
- DirectX 11 device initialization
- Swap chain setup
- Render target view configuration
- Simple rendering loop with cornflower blue clear color
- Basic HLSL shader examples (vertex and pixel shaders)

## Prerequisites

- Windows 10 or later
- Visual Studio 2019 or later (with C++ development tools)
- Windows SDK (10.0 or later)
- DirectX 11 (included with Windows)

## Building the Project

### Option 1: Using Visual Studio

1. Open `DirectXLearning.sln` in Visual Studio
2. Select your build configuration (Debug or Release)
3. Build the solution (F7 or Build > Build Solution)
4. Run the application (F5 or Debug > Start Debugging)

### Option 2: Using CMake

1. Create a build directory:
   ```
   mkdir build
   cd build
   ```

2. Generate build files:
   ```
   cmake ..
   ```

3. Build the project:
   ```
   cmake --build . --config Release
   ```

4. Run the application:
   ```
   bin\Release\DirectXLearning.exe
   ```

## Project Structure

```
DirectXLearning/
├── src/
│   └── main.cpp           # Main application code
├── shaders/
│   ├── VertexShader.hlsl  # Vertex shader
│   └── PixelShader.hlsl   # Pixel shader
├── CMakeLists.txt         # CMake build configuration
├── DirectXLearning.sln    # Visual Studio solution
├── DirectXLearning.vcxproj # Visual Studio project
├── .gitignore             # Git ignore file
└── README.md              # This file
```

## Features

- **Window Management**: Creates a basic Win32 window with proper message handling
- **DirectX 11 Initialization**: Sets up the DirectX 11 device, context, and swap chain
- **Rendering Pipeline**: Implements a basic rendering loop
- **Viewport Configuration**: Configures the viewport to match window dimensions
- **Clean Exit**: Proper cleanup of DirectX resources on exit
- **ESC Key Support**: Press ESC to exit the application

## Learning Path

This project serves as a starting point for learning DirectX 11. From here, you can:

1. Add geometry rendering (triangles, quads, meshes)
2. Implement vertex and index buffers
3. Add texture mapping
4. Implement lighting and shading
5. Add camera controls and transformations
6. Explore advanced rendering techniques

## Resources

- [Microsoft DirectX 11 Documentation](https://docs.microsoft.com/en-us/windows/win32/direct3d11/atoc-dx-graphics-direct3d-11)
- [DirectX Tutorial](http://www.rastertek.com/tutdx11.html)
- [Introduction to DirectX 11](https://docs.microsoft.com/en-us/windows/win32/direct3d11/dx-graphics-overviews)

## License

This is a learning project and is provided as-is for educational purposes.

## Contributing

Feel free to fork this project and experiment with your own DirectX 11 learning exercises!
