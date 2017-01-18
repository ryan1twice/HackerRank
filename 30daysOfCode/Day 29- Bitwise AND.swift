/**
    Day 29: Bitwise AND
    https://www.hackerrank.com/challenges/30-bitwise-and

    Magic solution in Discussions:
    https://www.hackerrank.com/challenges/30-bitwise-and/forum/comments/157544

    Somewhat explination for said magic:
    https://www.hackerrank.com/challenges/30-bitwise-and/forum/comments/163404
**/
import Foundation
let testCases = Int(readLine()!)!
var input = [Int]()
var n = 0
var k = 0

for _ in 0..<testCases {
    input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    n = input[0]
    k = input[1]
    if ((k-1) | k) <= n {
        print(k-1)
    } else {
        print(k-2)
    }
}
/*
    ** My nasty brute force solution **

for _ in 0..<testCases {
    input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    n = input[0]
    k = input[1]
    for A in 1..<n {
        for B in 2...n {
            if (A < B) && (A&B < k) && (A&B > max) {
                max = A&B
            }
        }
    }
    print(max)
    max = 0
}
*/