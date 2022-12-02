input = input.split(/\s{2,}/)
elfs = {}
input.each_with_index do |num, index|
    nums=num.split(" ").map(&:to_i)
    elfs[index] = nums.reduce(:+)
end

p elfs.values.max
p elfs.values.max(3).reduce(:+)