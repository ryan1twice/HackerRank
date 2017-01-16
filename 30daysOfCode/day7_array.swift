/**
    Day 7: Arrays
    https://www.hackerrank.com/challenges/30-arrays?h_r=next-challenge&h_v=zen

**/
import Foundation
// number of elements
let n = Int(readLine()!)!

// read array
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

// iterate over the array in reverse order and print the elements separated by space
for element in arr.reversed() {
    print(element, terminator: " ")
}

