# Autogenerated wrapper script for SCIP_jll for x86_64-linux-musl-cxx03
export libscip

using bliss_jll
using GMP_jll
using CompilerSupportLibraries_jll
using Ipopt_jll
JLLWrappers.@generate_wrapper_header("SCIP")
JLLWrappers.@declare_library_product(libscip, "libscip.so.7.0")
function __init__()
    JLLWrappers.@generate_init_header(bliss_jll, GMP_jll, CompilerSupportLibraries_jll, Ipopt_jll)
    JLLWrappers.@init_library_product(
        libscip,
        "lib/libscip.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
