overlaps = 0

File.open('day4_input.txt').each do |line|    
    # Let's set up values
    line_to_pairs = line.chomp.split(',')
    elf1 = line_to_pairs[0].split('-')
    elf2 = line_to_pairs[1].split('-')

    # check if overlaps
    if (Integer(elf1[0]) <= Integer(elf2[0]) && Integer(elf1[1]) >= Integer(elf2[1])) || (Integer(elf2[0]) <= Integer(elf1[0]) && Integer(elf2[1]) >= Integer(elf1[1]))
        overlaps += 1
    end

end

puts overlaps