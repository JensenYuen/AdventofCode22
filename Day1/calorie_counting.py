input = open("input.txt", "r")

elves = []
text = []

for x in input:
    text.append(x)

text = "".join(text)
text = text.split("\n\n")

for id, line in enumerate(text):
    nums = line.split('\n')
    total = 0
    for num in nums:
        total += int(num,base=10)
    elves.append(total)

elves.sort(reverse=True)
print(elves[0])
print(elves[0] + elves[1] + elves[2])
