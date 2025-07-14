# We would like to approximate the value of pi using a so-called stochastic method.
# This will prepare us for calculations that we will need to do later on.
# The stochastic method relies on random numbers.


# Before you start to programm:
# - Define a square whose centre is at (0,0) and its side has length 1 unit.
# - Define a circle whose centre is at (0,0) and its diameter has length 1 unit.
# - We say that the circle is circumscribed by the square.
# - Draw the circle and square.
# - Write down the area of the square and the circle and take the ratio.
# - Pick an arbitrary point inside the square: how can we tell whether the point is inside the circle or not?
# - Consult the documentation for the command rand that generates a uniform random number between 0 and 1.
#   - Using the rand command, how can we generate a random number between 0 and 2?
#   - Using the rand command, how can we generate a random number between -1 and 2?

# The main idea behind this exercise is the following: 
# we will approximate pi by approximating the ratio of the two areas.
# We generate random number inside the square and we count how many times the point falls inside the circle and the square.

# Once your approximation works, create a plot that shows how the approximation improves with the number of generated points.
# The x-axis of your plot should be the number of generated samples, and the y-axis the deviation from the true value of pi.
# To create the plot, consult the matplotlib.pyplot command.

function stochastic_approximation_pi(number_of_samples)

    # initialise counts to zero.
    count_inside_circle = 0.0
    count_inside_square = 0.0

    for i in 1:number_of_samples

        # We want to generate a random number inside the aforementioned square.
        # Generate a random number inside square 
        x = rand() - 0.5
        y = rand() - 0.5

        # By definition, we always generate inside the square.

        count_inside_square += 1

        # Check if random number inside circle.
        if sqrt(x^2 + y^2) <= 0.5
           
            count_inside_circle += 1

        end

    end
    
    ratio = count_inside_circle / count_inside_square

    radius = 0.5

    # calculate pi from the approximate ratio

    return ratio  / radius^2
    
end