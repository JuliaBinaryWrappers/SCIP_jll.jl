# Autogenerated wrapper script for SCIP_jll for i686-w64-mingw32-cxx11
export libscip

using bliss_jll
using GMP_jll
using CompilerSupportLibraries_jll
using Ipopt_jll
using Zlib_jll
JLLWrappers.@generate_wrapper_header("SCIP")
JLLWrappers.@declare_library_product(libscip, "libscip.dll")
function __init__()
    JLLWrappers.@generate_init_header(bliss_jll, GMP_jll, CompilerSupportLibraries_jll, Ipopt_jll, Zlib_jll)
    JLLWrappers.@init_library_product(
        libscip,
        "bin\\libscip.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
