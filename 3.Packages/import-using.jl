# Demonstrating the differences between using and import

# also demonstrate importing specific objects from a namespace and mask them
using LinearAlgebra
import Random:randexp as rrexp

# create a function with a conflicting name
function randexp()
    17
end

a = [1 1]
b = [0 1]

# compute dot product
dot(a, b) |> println

# conflicting names 
#Random.randexp() |> println # return number from exponential distribution
rrexp() |> println
randexp() |> println