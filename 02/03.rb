points = 0
hash_points = {
    "X" => 1, # Rock
    "Y" => 2, # Paper
    "Z" => 3, # Scissors
    "loss" => 0,
    "draw" => 3,
    "win" => 6
}

File.open('day2_input.txt').each do |line|
    match = line.split(' ')
    
    # Draw
    points += hash_points["draw"] if (match[0] == "A" && match[1] == "X") || (match[0] == "B" && match[1] == "Y") || (match[0] == "C" && match[1] == "Z")

    # Win
    points += hash_points["win"] if (match[0] == "A" && match[1] == "Y") || (match[0] == "B" && match[1] == "Z") || (match[0] == "C" && match[1] == "X")

    # Loss - NO NEED TO COUND AS POINTS = 0 for loss
    # points += hash_points["loss"] if (match[0] == "A" && match[1] == "Z") || (match[0] == "B" && match[1] == "X") || (match[0] == "C" && match[1] == "Y")

    # Points for choosing r, p, s
    points += hash_points["X"] if match[1] == "X"
    points += hash_points["Y"] if match[1] == "Y"
    points += hash_points["Z"] if match[1] == "Z"
end

puts points