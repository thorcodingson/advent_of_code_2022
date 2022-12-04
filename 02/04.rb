points = 0
hash_points = {
    "X" => 1, # Rock
    "Y" => 2, # Paper
    "Z" => 3, # Scissors
    "loss" => 0,
    "draw" => 3,
    "win" => 6
}

# Now second column meand 
# X - loss
# Y - draw
# Z - win

File.open('day2_input.txt').each do |line|
    match = line.split(' ')
    
    # Loss
    if match[1] == "X"
        # No points for loss

        points += hash_points["X"] if (match[0] == "B") # you choose Rock
        points += hash_points["Y"] if (match[0] == "C") # you choose Paper
        points += hash_points["Z"] if (match[0] == "A") # you choose Scissors
    end

    if match[1] == "Y"
        points += hash_points["draw"]

        points += hash_points["X"] if (match[0] == "A") # you choose Rock
        points += hash_points["Y"] if (match[0] == "B") # you choose Paper
        points += hash_points["Z"] if (match[0] == "C") # you choose Scissors
    end

    if match[1] == "Z"
        points += hash_points["win"]

        points += hash_points["X"] if (match[0] == "C") # you choose Rock
        points += hash_points["Y"] if (match[0] == "A") # you choose Paper
        points += hash_points["Z"] if (match[0] == "B") # you choose Scissors
    end
    
end

puts points