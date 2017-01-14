/**
    Day 5: Loops
   https://www.hackerrank.com/challenges/30-loops

    * Given an integer, i, print first 10 multiples
    * ex:
        input:  2
        output:
                2 x 1 = 2
                2 x 2 = 4
                2 x 3 = 6
                2 x 4 = 8
                2 x 5 = 10
                2 x 6 = 12
                2 x 7 = 14
                2 x 8 = 16
                2 x 9 = 18
                2 x 10 = 20
**/
let i = Int(readLine()!)!

for iteration in 1...10 {
    print("\(i) x \(iteration) = \(i*iteration)")
}