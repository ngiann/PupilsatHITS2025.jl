module PupilsatHITS2025

    using LinearAlgebra, Random

    include("stochastic_approximation_pi.jl")
    include("approximate_volume_of_sphere.jl")

    export stochastic_approximation_pi, approximate_volume_of_sphere

end
