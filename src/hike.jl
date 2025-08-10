# --- Define the landscape ---
function generate_landscape()
    
    P = zeros(Float64, 10, 10)

    # High peak at (3, 8)
    for i in 1:10, j in 1:10
        dist_high = sqrt((i - 3)^2 + (j - 8)^2)
        dist_low = sqrt((i - 8)^2 + (j - 2)^2)
        P[i, j] = exp(-0.5 * dist_high^2) + 0.5 * exp(-0.5 * dist_low^2)
    end

    # Normalize to make it a proper probability distribution
    P ./= sum(P)
    return P
end


# --- Metropolis-Hastings sampler ---
function metropolis_hastings(P, steps)
    nrows, ncols = size(P)
    freq = zeros(Int, nrows, ncols)

    # Start at a random location
    current = (rand(1:nrows), rand(1:ncols))

    for step in 1:steps
        i, j = current

        # Propose a move to a neighbor (up/down/left/right)
        neighbors = [(i+1, j), (i-1, j), (i, j+1), (i, j-1)]
        neighbors = [(x, y) for (x, y) in neighbors if 1 <= x <= nrows && 1 <= y <= ncols]
        proposed = rand(neighbors)

        pi_current = P[i, j]
        pi_proposed = P[proposed...]

        α = min(1.0, pi_proposed / pi_current)
        if rand() < α
            current = proposed  # accept the move
        end

        freq[current...] += 1
    end

    return freq
end


function hike()

    P = generate_landscape()

    # --- Run the simulation ---
    P = generate_landscape()
    visits = metropolis_hastings(P, 100_000)

    # --- Visualization ---
    heatmap(visits, title="Hiker Visit Frequency", c=:thermal)

    visits
end


function continuouslandscape(X)

    x = X[1]
    y = X[2]

    dist_peak_1 = sqrt((x - 3)^2 + (y - 8)^2)
    dist_peak_2 = sqrt((x - 8)^2 + (y - 2)^2)
    exp(-0.5 * dist_peak_1^2) + 0.5 * exp(-0.5 * dist_peak_2^2)

end