#                 [M]     [W] [M]    
#             [L] [Q] [S] [C] [R]    
#             [Q] [F] [F] [T] [N] [S]
#     [N]     [V] [V] [H] [L] [J] [D]
#     [D] [D] [W] [P] [G] [R] [D] [F]
# [T] [T] [M] [G] [G] [Q] [N] [W] [L]
# [Z] [H] [F] [J] [D] [Z] [S] [H] [Q]
# [B] [V] [B] [T] [W] [V] [Z] [Z] [M]
#  1   2   3   4   5   6   7   8   9 

conteners = [
    [],
    ["B", "Z", "T"], #1
    ["V", "H", "T", "D", "N"], #2
    ["B", "F", "M", "D"], #3
    ["T", "J", "G", "W", "V", "Q", "L"], #4
    ["W", "D", "G", "P", "V", "F", "Q", "M"], #5
    ["V", "Z", "Q", "G", "H", "F", "S"], #6
    ["Z", "S", "N", "R", "L", "T", "C", "W"], #7
    ["Z", "H", "W", "D", "J", "N", "R", "M"], #8
    ["M", "Q", "L", "F", "D", "S"], #9
]

File.open('day5_input.txt').each_with_index do |line, index|
    next if index < 10
    what = line.chomp.split(' ')
    qty = Integer(what[1])
    from = Integer(what[3])
    to = Integer(what[5])
    
    item_pack = []
    for i in 1..qty do
        item_pack.unshift(conteners[from].pop)
    end

    item_pack.each do |item|
        conteners[to].push(item)
    end

end

conteners.each do |c|
    print c.last
end
puts