letters_by_index = " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

elfes_groups = [[],[],[]]
new_group = []
elfes_group_num = 0
elf_number = 0

badges = []
badge_index = 0

File.open('day3_input.txt').each do |line|
    new_group[elf_number] = line.chomp
    elf_number += 1

    if elf_number == 3
        elfes_groups[elfes_group_num] = new_group.dup
        elf_number = 0
        elfes_group_num += 1
    end
end

elfes_groups.each do |group_of_3|
    line_one = group_of_3[0].split('')
    line_two = group_of_3[1].split('')
    line_three = group_of_3[2].split('')

    line_one.each do |one|
        line_two.each do |two|
            line_three.each do |three|
                if one == two && one == three
                    badges[badge_index] = letters_by_index.index(two)
                end
            end
        end
    end
    badge_index += 1
end

puts badges.sum()
