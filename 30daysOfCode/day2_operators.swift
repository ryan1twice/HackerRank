/**
    Day 2: Operators
    https://www.hackerrank.com/challenges/30-operators

    * Read in meal cost (Double)
    * Read in tip percentage (Int)
    * Read in tax percentage (Int)

    * Print total cost as a rounded int
**/
import Foundation

let mealCost = Double(readLine()!)!
let tipPercent = Int(readLine()!)!
let taxPercent = Int(readLine()!)!

var tip = mealCost * Double(tipPercent)/100.0
var tax = mealCost * Double(taxPercent)/100.0
var total = Int(round(mealCost + tip + tax))

print("The total meal cost is \(total) dollars.")