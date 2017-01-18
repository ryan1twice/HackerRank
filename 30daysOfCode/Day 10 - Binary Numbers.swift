/**
    Day 10: Binary Numbers
    https://www.hackerrank.com/challenges/30-binary-numbers

**/
let num = Int(readLine()!)!
let str = String(num, radix: 2)
var consec = 0
var max = 0
var next = true
for bit in str.characters {
    if bit == "1" {
        consec += 1
    } else {
        consec = 0
    }
    if max < consec {
        max = consec
    }
}
print(max)