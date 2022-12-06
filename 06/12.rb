pattern_length = 14
character_number = pattern_length
datastream = ''
found_marker = ''

File.open('day6_input.txt').each do |line|
    datastream = line
    break
end

while found_marker == '' && character_number < datastream.length do
    marker = datastream[(character_number-pattern_length)...character_number]
    
    is_unique = true
    for c in ('a'..'z')
        if marker.count(c) > 1
            is_unique = false
        end
    end

    if is_unique
        found_marker = marker
        break
    end

    character_number += 1
    
end

puts character_number
puts marker