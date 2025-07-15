# Using functions as arguments
# - Create a function, e.g. add2, that takes in one numerical argument and returns the argument plus 2
# - We will now create another function e.g. apply_to_list, that takes in two arguments: the first argument is a function and the second is an array/ list of numbers.
#   The apply_to_list function should apply the first argument to each of the elements in the array and return the results.
# Example: if the array of inputs is [2.0, 3.0, 4.0] then the result should be [4.0, 5.0, 6.0].

# - Create another function, e.g. mul2, that takes in one numerical argument and returns the argument times 2.
# Use the apply_to_list function from above to do the following: given an array/list of numbers, add two each element the value of 2; after this, multiply each element in the new list by 2.


# We will now programm a simple optimisation algorithm called a hill-climber.
# A hill-climber keeps proposing new solutions and keeps the solutions that lead to an improvement of the objective function.

# Starting from an initial solution, the hill climber perturbs the solution with random noise and checks whether the new solution is better than the initial solution.
# If it is better, then this becomes the current best solution.
# The hill-climber then continues perturbing the current best solution and continuous until a maximum number of iterations (defined by us) have been reached.

# Before you start working on your code solution, try out a simple example:
# 1. Define in python the function f(x) = -x^2.
# 2. Plot the function.
# 3. Our goal is to find the maximum value of f(x) which is visible in the plot.
# 4. Start from a random solution e.g. xbest = 1.3
# 5. Add some noise to xbest, e.g. xnew += randn() and check whether f(xnew) is better than f(xbest).
# 6. If  f(xnew)>f(xbest), set xbest equal to xnew.
# 7. Manually repeat steps 5 and 6 for a few times.
# 8. Put the above manual calculation in a for loop so that is automatically carried out for a number of times e.g. 10 times.
# 9. Check if your results is close to the true maximum which is zero.

# You may now have a better intuition of how a hill-climber works.
# Before you starting coding, design the algorithm on paper or on the board.
# You will program a function that takes as inputs the following:
# - the function to be optimised
# - the dimension of the parameter that we want to optimise (in the example above we had only one dimension)
# - the initial solution
# - the number of iterations, i.e. the number of times the hill-climber proposes a new solution.

# Account for temporary variables that keep track of the best solution found so far and the corresponding best numerical value.
# You will need a for-loop within which new solutions are proposed by perturbing the current solution by random numbers generated using the function randn()

function hill_climber(f, D, x0, iterations)

    xbest = x0
   
    fbest = f(xbest)

    for i in 1:iterations
        
        xnew = xbest .+ randn(D)

        fnew = f(xnew)

        if fnew > fbest
            fbest = fnew
            xbest = xnew
        end

    end

    return xbest

end