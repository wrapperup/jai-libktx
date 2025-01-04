# jai-libktx

Bindings for Khronos' [libktx](https://github.com/KhronosGroup/KTX-Software), a library that
provides functions for reading and writing KTX/KTX2 image files.

The bindings also require [jai-vulkan](https://gitlab.com/Stowy/jai-vulkan) to provide Vulkan definitions (the library
doesn't require them to work, some configuration may be added later to opt-out of this)

Currently pre-built binaries only exist for Windows. Untested on MacOS or Linux (the generator is set up for them though!)

## License

Bindings fall under MIT/Apache 2.0 dual license.
`libktx` falls under Apache 2.0.
