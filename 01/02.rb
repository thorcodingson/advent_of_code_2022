elfes = []
elf_number = 0
elfes[0] = 0

File.open('input.txt').each do |line|
    if line.chomp.empty?
        elf_number += 1
        elfes[elf_number] = 0
    else
        elfes[elf_number] += Integer(line.chomp)
    end
end

puts elfes.max(3).sum()