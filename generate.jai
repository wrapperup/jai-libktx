available_flag_bits: Table(string, *Enum);

OMIT_LIST :: string.[
    "KTX_ETC1S_DEFAULT_COMPRESSION_LEVEL",
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

#run {
    set_build_options_dc(.{do_output=false});

    output_filename: string;
    opts: Generate_Bindings_Options;
    {
        using opts;

        #if OS == .WINDOWS {
            output_filename          = "windows.jai";
            array_add(*libpaths,      "windows");
            array_add(*libnames,      "ktx");
            strip_flags = 0;
        } else #if OS == .LINUX {
            output_filename          = "linux.jai";
            array_add(*libpaths,      "linux");
            array_add(*libnames,      "libktx");
            strip_flags = .INLINED_FUNCTIONS;
        } else #if OS == .MACOS {
            output_filename          = "macos.jai";
            array_add(*libpaths,      "macos");
            array_add(*libnames,      "libktx");
            strip_flags = .INLINED_FUNCTIONS;
        } else {
            assert(false);
        }

        array_add(*source_files,  "include/ktx.h");
        array_add(*source_files,  "include/ktxvulkan.h");
        array_add(*system_include_paths, ".");

        array_add(*extra_clang_arguments, "-x", "c", "-DWIN32_LEAN_AND_MEAN");

        visitor = libktx_visitor;
    }

    builder, success := generate_bindings(opts, log_results = true);
    if !success return;

    append(*builder, "\n#scope_export;\n\n// Exported constants\n\nKTX_ETC1S_DEFAULT_COMPRESSION_LEVEL: ktx_uint32_t : 2;");

    success = write_entire_file(output_filename, *builder);
    if !success {
        log_error("Could not write generated output to \"%\"", output_filename);
        return;
    }
    log("\nOK! generated '%'", output_filename);
}


#import "Basic";
#import "Bindings_Generator";
#import "Compiler";
#import "File";
#import "Hash_Table";
#import "String";
