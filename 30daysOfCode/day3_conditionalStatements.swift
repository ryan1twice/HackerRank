/**
    Day 3: Intro to Conditional Statements
    https://www.hackerrank.com/challenges/30-conditional-statements

    * If  is odd, print Weird
    * If  is even and in the inclusive range of 2 to 5, print Not Weird
    * If  is even and in the inclusive range of 6 to 20, print Weird
    * If  is even and greater than 20, print Not Weird
**/
let i = Int(readLine()!)!

if i%2==0 {
    if (i>5 && i<21) { print("Weird")}
    else if (i>1 && i<6) { print("Not Weird") }
    else if i>20 { print("Not Weird") }
} else { print("Weird") }