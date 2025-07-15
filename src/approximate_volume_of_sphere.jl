# In this exercise we will approximate the volume of the sphere.
# In actual fact, there is a formulate for calculating the volume, but we will use the stochastic method instead.
#
# We will use the same idea as in the stochastic calculate of pi:
# We will put a cube of known volume around the sphere.
# We will then generate random numbers inside the cube and count how many times the point falls inside the cube and inside the sphere.
#
# Before you start programming:
# - Define a cube whose side has length 1 and is centred at point (0,0,0).
# - Define a sphere whose diameter has length 1 and is centred at point (0,0,0).
# - Draw the cube and sphere.
# - Take an arbitrary point inside the cube: how can we tell whether the point is inside the sphere or not?

# The main idea behind this exercise is the following: 
# we will approximate pi by approximating the ratio of the two areas.
# We generate random number inside the cube and we count how many times the point falls inside the cube and the sphere.

# Once your approximation works, create a plot that shows how the approximation improves with the number of generated points.
# The x-axis of your plot should be the number of generated samples, and the y-axis the deviation from the true value of pi.
# To create the plot, consult the matplotlib.pyplot command.


function approximate_volume_of_sphere(number_of_samples)
  
  # initialise counts to zero.
    count_inside_sphere = 0.0
    count_inside_cube = 0.0

    for i in 1:number_of_samples

        # We want to generate a random number inside the aforementioned square.
        # Generate a random number inside square 
        x = rand() - 0.5
        y = rand() - 0.5
        z = rand() - 0.5

        # By definition, we always generate inside the square.

        count_inside_cube += 1

        # Check if random number inside circle.
        if sqrt(x^2 + y^2 + z^2) <= 0.5
           
            count_inside_sphere += 1

        end

    end

    # ratio corresponds directly to the volume of the sphere

    ratio = count_inside_sphere / count_inside_cube

    return ratio


end