# Autogenerated wrapper script for SCIP_jll for x86_64-apple-darwin
export libscip, libsoplex, scipexe

using boost_jll
using Bzip2_jll
using CompilerSupportLibraries_jll
using GMP_jll
using Ipopt_jll
using Readline_jll
using Zlib_jll
JLLWrappers.@generate_wrapper_header("SCIP")
JLLWrappers.@declare_library_product(libscip, "@rpath/libscip.9.2.dylib")
JLLWrappers.@declare_library_product(libsoplex, "@rpath/libsoplexshared.7.1.dylib")
JLLWrappers.@declare_executable_product(scipexe)
function __init__()
    JLLWrappers.@generate_init_header(boost_jll, Bzip2_jll, CompilerSupportLibraries_jll, GMP_jll, Ipopt_jll, Readline_jll, Zlib_jll)
    JLLWrappers.@init_library_product(
        libscip,
        "lib/libscip.9.2.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libsoplex,
        "lib/libsoplexshared.7.1.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        scipexe,
        "bin/scip",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
