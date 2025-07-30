module PupilsatHITS2025

    using LinearAlgebra, Random
    using StatsBase
    using Plots  # optional, for visualization


    include("stochastic_approximation_pi.jl")
    include("approximate_volume_of_sphere.jl")
    include("hill_climber.jl")
    include("hike.jl")

    export stochastic_approximation_pi, approximate_volume_of_sphere, hill_climber
    export hike, generate_landscape
end
