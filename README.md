# jai-libktx

Bindings for Khronos' [libktx](https://github.com/KhronosGroup/KTX-Software), a library that
provides functions for reading and writing KTX/KTX2 image files.

## Usage

This optionally depends on [jai-vulkan](https://gitlab.com/Stowy/jai-vulkan) to provide Vulkan definitions.
If you don't depend on Vulkan, you can strip out the Vulkan-specific functions with `INCLUDE_KTX_VULKAN = false`.

```c++
#import "jai-libktx" ()(INCLUDE_KTX_VULKAN = false);
```

Currently pre-built binaries only exist for Windows. Untested on MacOS or Linux (the generator is set up for them though!)

## Building libktx

See https://github.com/KhronosGroup/KTX-Software/blob/main/BUILDING.md for more information

```bash
cmake . -B build
cmake --build build
```

## License

Bindings fall under MIT/Apache 2.0 dual license.
`libktx` falls under Apache 2.0.
