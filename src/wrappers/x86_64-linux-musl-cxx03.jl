# Autogenerated wrapper script for SCIP_jll for x86_64-linux-musl-cxx03
export libscip, libsoplex, scipexe

using bliss_jll
using CompilerSupportLibraries_jll
using GMP_jll
using Ipopt_jll
using Readline_jll
using Zlib_jll
JLLWrappers.@generate_wrapper_header("SCIP")
JLLWrappers.@declare_library_product(libscip, "libscip.so.8.0")
JLLWrappers.@declare_library_product(libsoplex, "libsoplexshared.so.6.0")
JLLWrappers.@declare_executable_product(scipexe)
function __init__()
    JLLWrappers.@generate_init_header(bliss_jll, CompilerSupportLibraries_jll, GMP_jll, Ipopt_jll, Readline_jll, Zlib_jll)
    JLLWrappers.@init_library_product(
        libscip,
        "lib/libscip.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libsoplex,
        "lib/libsoplexshared.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        scipexe,
        "bin/scip",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
