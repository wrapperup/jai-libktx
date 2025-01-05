#run,stallable {
    set_build_options_dc(.{do_output=false});
    if !generate_all_bindings() {
        compiler_set_workspace_status(.FAILED);
    }
}

generate_all_bindings :: () -> bool {
    success := generate_bindings_variant("ktx", .["include/ktx.h"]);
    success &&= generate_bindings_variant("ktxvulkan", .["include/ktxvulkan.h"]);
    return success;
}

generate_bindings_variant :: (output_name: string, includes: [] string) -> bool {
    available_flag_bits = .{};

    output_filename: string = ---;

    opts: Generate_Bindings_Options;
    {
        using opts;

        #if OS == .WINDOWS {
            output_filename = tprint("%_windows.jai", output_name);
            array_add(*libpaths, "windows");
            array_add(*libnames, "ktx");
            strip_flags = 0;
        } else #if OS == .LINUX {
            output_filename = tprint("%_linux.jai", output_name);
            array_add(*libpaths, "linux");
            array_add(*libnames, "libktx");
            strip_flags = .INLINED_FUNCTIONS;
        } else #if OS == .MACOS {
            output_filename = tprint("%_macos.jai", output_name);
            array_add(*libpaths, "macos");
            array_add(*libnames, "libktx");
            strip_flags = .INLINED_FUNCTIONS;
        } else {
            assert(false, "OS is not supported.");
        }

        for source_file: includes {
            array_add(*source_files, source_file);
        }

        array_add(*system_include_paths, ".");
        array_add(*system_include_paths, "./include");
        array_add(*extra_clang_arguments, "-x", "c", "-DWIN32_LEAN_AND_MEAN");

        visitor = libktx_visitor;
    }

    return generate_bindings(opts, output_filename);
}

available_flag_bits: Table(string, *Enum);

OMIT_LIST :: string.[
    "KTX_ETC1S_DEFAULT_COMPRESSION_LEVEL", // This is marked as extern, so this is omitted and re-defined in modules.jai.
];

libktx_visitor :: (decl: *Declaration, parent_decl: *Declaration) -> Declaration_Visit_Result {
    // Omit our OMIT_LIST
    if !parent_decl && array_find(OMIT_LIST, decl.name) {
        //print("OMIT_LIST: %\n", decl.name);
        decl.decl_flags |= .OMIT_FROM_OUTPUT;
        return .STOP;
    }

    if decl.kind == .ENUM {
        en := cast(*Enum)decl;
        if contains(decl.name, "flag_bits_e") || contains(decl.name, "FlagBits") {
            en.flags |= .IS_ENUM_FLAGS;
            en.flags |= .VALUES_IN_HEX;

            // Flags must be ktx_uint32_t == u32
            en.type = context.generator.type_def_u32;

            table_add(*available_flag_bits, decl.name, en);
        }
    }

    if decl.kind == .TYPEDEF && decl.type.type_of_typedef &&  decl.type.type_of_typedef.name == "ktx_uint32_t" {
        print("%, %\n", decl.name, decl.type.type_of_typedef.name);
        flags_name := replace(decl.name, "flags", "flag_bits_e");
        enum_decl, found := table_find(*available_flag_bits, flags_name);

        if !found {
            // Because of course there's an inconsistent naming scheme...
            flags_name := replace(decl.name, "Flags", "FlagBits");
            enum_decl, found = table_find(*available_flag_bits, flags_name);
        }

        if found {
            type := New(CType);
            type.type_of_enum = enum_decl;
            type.size = enum_decl.type.size;
            decl.type = type;
        }
    }

    return .RECURSE;
}

#import "Basic";
#import "Bindings_Generator";
#import "Compiler";
#import "File";
#import "Hash_Table";
#import "String";
