// Bindings to Khrono's KTX-Software/libktx for reading and writing ktx/ktx2 texture files.
// 
// Vulkan support is optional but enabled by default. To disable it, simply pass
// INCLUDE_KTX_VULKAN = false to the module definition. eg:
//
// #import "jai-libktx" ()(INCLUDE_KTX_VULKAN = false);
//
// The Vulkan bindings used here can be found at https://gitlab.com/Stowy/jai-vulkan,
// but this also works with the Vulkan ones that come with the compiler.

#module_parameters ()(INCLUDE_KTX_VULKAN := true);

#if INCLUDE_KTX_VULKAN {
    #import "jai-vulkan";
}

#load "helpers.jai";

#if OS == .WINDOWS {
    #load "ktx_windows.jai";
    #if INCLUDE_KTX_VULKAN {
        #load "ktxvulkan_windows.jai";
    }

    #scope_module
    FILE :: void;
} else if OS == .LINUX {
    #import "POSIX";
    #load "ktx_linux.jai";

    #if INCLUDE_KTX_VULKAN {
        #load "ktxvulkan_linux.jai";
    }
} else if OS == .MACOS {
    #import "POSIX";
    #load "ktx_macos.jai";

    #if INCLUDE_KTX_VULKAN {
        #load "ktxvulkan_macos.jai";
    }
} else {
    #assert false  "Unsupported OS";
}

#scope_export

// Exported Constants

KTX_ETC1S_DEFAULT_COMPRESSION_LEVEL: ktx_uint32_t : 2;
