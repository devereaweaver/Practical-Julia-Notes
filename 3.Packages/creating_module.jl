# an example on how to create modules using Julia

# each module has its own global scope, they're self contained

# first module
module M1
export plusone    # objects to be exported
"""
plusone(x) - Add _one_ to the **number** `x`.

# example
For example `plusone(1)` returns 2.
"""
plusone(x) = x + 1
end

# second module 
module M2
export minusone
minusone(x) = x - 1
end

# import modules located in same document
using .M1, .M2

println(plusone(99))
println(minusone(101))