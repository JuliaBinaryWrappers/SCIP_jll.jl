# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule SCIP_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("SCIP")
JLLWrappers.@generate_main_file("SCIP", UUID("e5ac4fe4-a920-5659-9bf8-f9f73e9e79ce"))
end  # module SCIP_jll
