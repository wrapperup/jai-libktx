// Currently required since the vulkan definitions are glued-in with
// the bindings, but we can make this an optional dependency later.
#import "jai-vulkan";

#load "helpers.jai";

#if OS == .WINDOWS {
    #load "windows.jai";

    #scope_module
    FILE :: void;
} else if OS == .LINUX {
    #import "POSIX";
    #load "linux.jai";
} else if OS == .MACOS {
    #import "POSIX";
    #load "macos.jai";
} else {
    #assert false  "Unsupported OS";
}
