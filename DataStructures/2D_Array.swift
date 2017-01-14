import Foundation
/*
Given 6x6 2D Array

1 1 1 0 0 0    Where and hourglass is
0 1 0 0 0 0            a b c
1 1 1 0 0 0              d
0 0 0 0 0 0            e f g
0 0 0 0 0 0     
0 0 0 0 0 0     (there are 16 here)

Calculate sum of all hourglasses here and print the max

ints in the 2D array have max value of 9 and min of -9
*/

var twoDimArr = [[Int]](repeating: [Int](repeating: 0, count: 6), count:6)
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

twoDimArr[0] = arr
for row in 1..<6 {
    //Read input
    arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    twoDimArr[row] = arr
}
//7 items in an hourglass with a minimum value of -9
var max = (-9 * 7)
var sum = 0
//Index 3 is last that an hourglass can be created
for row in 0..<4 {
    for col in 0..<4 {
        sum = 0
        sum += twoDimArr[row][col] + twoDimArr[row][col+1] + twoDimArr[row][col+2]
        sum += twoDimArr[row+1][col+1]
        sum += twoDimArr[row+2][col] + twoDimArr[row+2][col+1] + twoDimArr[row+2][col+2]
        
        if sum > max {
            max = sum
        }
    }
}
print(max)