letters_by_index = " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

repeats = []
repeats_index = 0

File.open('day3_input.txt').each do |line|
    line_mid = line.chomp.length / 2
    arrA = line[0...line_mid].split('')
    arrB = line[line_mid..-1].split('')
    # puts letters_by_index.index('A')

    arrA.each do |a|
        arrB.each do |b|
            if a == b
                repeats[repeats_index] = letters_by_index.index(a)
            end
        end
    end
    
    repeats_index += 1
end

puts repeats.sum()