/**
    Day 25: Running Time and Complexity
    https://www.hackerrank.com/challenges/30-running-time-and-complexity
**/
import Foundation
let t = Int(readLine()!)!
var input = [Int]()
for _ in 0..<t {
    input.append(Int(readLine()!)!)
}
func isPrime(_ n: Int) -> Bool {
    let nSqrt = Int(sqrt(Double(n)))
    if n == 1 { return false }
    else if n == 2 { return true }
    // Start at 2 since can'd divide by 0 and 1 is always divisor
    for i in 2...nSqrt {
        if (n%i == 0) { return false }
    }
    // No divisors other than 1
    return true
}
for num in input {
    if isPrime(num) { print("Prime") }
    else { print("Not prime") }
}