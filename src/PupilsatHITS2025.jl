module PupilsatHITS2025

    using LinearAlgebra, Random

    include("stochastic_approximation_pi.jl")
    include("approximate_volume_of_sphere.jl")
    include("hill_climber.jl")

    export stochastic_approximation_pi, approximate_volume_of_sphere, hill_climber

end
