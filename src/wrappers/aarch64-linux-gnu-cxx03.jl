# Autogenerated wrapper script for SCIP_jll for aarch64-linux-gnu-cxx03
export libscip

using bliss_jll
using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("SCIP")
JLLWrappers.@declare_library_product(libscip, "libscip.so.7.0")
function __init__()
    JLLWrappers.@generate_init_header(bliss_jll, CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libscip,
        "lib/libscip.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
