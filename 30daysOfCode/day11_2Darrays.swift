/**
    Day 11: 2D Arrays
    https://www.hackerrank.com/challenges/30-2d-arrays

**/
import Foundation
var twoDim = [[Int]](repeating: [Int](repeating: 0, count: 6), count:6)
// Fill the 2D array
for i in 0..<6 {
    twoDim[i] = readLine()!.components(separatedBy: " ").map{ Int($0)! }
}

var sum = 0
var max = (-9 * 7) // Lowest possible maximum
// Only need to iterate to the 3rd index of rows for hourglass
for row in 0..<4 {
    // Same for the Columns
    for col in 0..<4 {
        // Calc sum of an hourglass
        sum += twoDim[row][col] + twoDim[row][col+1] + twoDim[row][col+2]
        sum += twoDim[row+1][col+1]
        sum += twoDim[row+2][col] + twoDim[row+2][col+1] + twoDim[row+2][col+2]
        
        if sum > max { max = sum }
        sum = 0
    }
}
print(max)