overlap = 0

File.open('day4_input.txt').each do |line|
    # Let's set up values
    line_to_pairs = line.chomp.split(',')
    elf1 = line_to_pairs[0].split('-')
    elf2 = line_to_pairs[1].split('-')

    if Integer(elf2[0]) <= Integer(elf1[1]) && Integer(elf1[0]) <= Integer(elf2[1])
        overlap += 1
    end
end

puts overlap