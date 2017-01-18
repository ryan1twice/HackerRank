/**
    Day 27: Testing
    https://www.hackerrank.com/challenges/30-testing

    Really dumb challenge 
**/
print("5")
print("5 3")
print("-1 100 999 0 90")
print("4 2")
print("0 -1 2 1")
print("3 3")
print("-1 0 1")
print("6 1")
print("-1 0 1 -1 2 3")
print("7 3")
print("-1 0 1 2 3 4 5")
/*
import Foundation
let testCases = Int(readLine()!)!
var expected = [Int]()
var actual = [Int]()

var students = 0
var onTime = 0
var late = 0

for i in 0..<testCases {
    expected = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    actual = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    
    students = expected[0]
    onTime = expected[1]
    
    for time in actual {
        if time > 0 {
            late += 1
        }
    }
    if onTime > late {
        print("YES")
    } else {
        print("NO")
    }
}
*/