/**
    Day 9: Recursion
    https://www.hackerrank.com/challenges/30-recursion

**/
var testCase = Int(readLine()!)!

func factorial(_ x: Int) -> Int {
    while (x-1) > 0 {
        return x * factorial(x-1)
    }
    return 1
}
print(factorial(testCase))

