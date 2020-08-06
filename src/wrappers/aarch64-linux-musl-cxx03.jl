# Autogenerated wrapper script for SCIP_jll for aarch64-linux-musl-cxx03
export libscip

using bliss_jll
using Ipopt_jll
using CompilerSupportLibraries_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libscip`
const libscip_splitpath = ["lib", "libscip.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libscip_path = ""

# libscip-specific global declaration
# This will be filled out by __init__()
libscip_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libscip = "libscip.so.7.0"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"SCIP")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (bliss_jll.PATH_list, Ipopt_jll.PATH_list, CompilerSupportLibraries_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (bliss_jll.LIBPATH_list, Ipopt_jll.LIBPATH_list, CompilerSupportLibraries_jll.LIBPATH_list,))

    global libscip_path = normpath(joinpath(artifact_dir, libscip_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libscip_handle = dlopen(libscip_path)
    push!(LIBPATH_list, dirname(libscip_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

