# Autogenerated wrapper script for SCIP_jll for x86_64-w64-mingw32-cxx11
export libscip, libsoplex, scipexe

using bliss_jll
using boost_jll
using Bzip2_jll
using CompilerSupportLibraries_jll
using GMP_jll
using Ipopt_jll
using Readline_jll
using Zlib_jll
JLLWrappers.@generate_wrapper_header("SCIP")
JLLWrappers.@declare_library_product(libscip, "libscip.dll")
JLLWrappers.@declare_library_product(libsoplex, "libsoplexshared.dll")
JLLWrappers.@declare_executable_product(scipexe)
function __init__()
    JLLWrappers.@generate_init_header(bliss_jll, boost_jll, Bzip2_jll, CompilerSupportLibraries_jll, GMP_jll, Ipopt_jll, Readline_jll, Zlib_jll)
    JLLWrappers.@init_library_product(
        libscip,
        "bin\\libscip.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libsoplex,
        "bin\\libsoplexshared.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        scipexe,
        "bin\\scip.exe",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
