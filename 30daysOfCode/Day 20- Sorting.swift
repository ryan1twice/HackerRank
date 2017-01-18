/**
    Day 20: Sorting (Bubble Sort)
    https://www.hackerrank.com/challenges/30-sorting
**/
import Foundation

// read the integer n
let n = Int(readLine()!)!

// read the array
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var count = arr.count
var swaps = 0
while count > 0 {
    for i in 0..<count-1 {
        if arr[i] > arr[i+1] {
            swaps += 1
            swap(&arr[i], &arr[i+1])
        }
    }
    count -= 1
}
print("Array is sorted in \(swaps) swaps.")
print("First Element: \(arr.first!)")
print("Last Element: \(arr.last!)")