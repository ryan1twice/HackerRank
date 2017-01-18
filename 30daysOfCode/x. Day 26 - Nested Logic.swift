/**
    Day 26: Nested Logic
    https://www.hackerrank.com/challenges/30-nested-logic
**/
import Foundation
var inDate = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let inDay = inDate[0]
let inMonth = inDate[1]
let inYear = inDate[2]

var exDate = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let exDay = exDate[0]
let exMonth = exDate[1]
let exYear = exDate[2]

var fine = 0

if inYear < exYear {
    //print("Year On Time")
} else if inYear == exYear {
    if inMonth < exMonth {
        //print("Month On Time")
    }
    else if inMonth == exMonth {
        if inDay <= exDay {
            //print("Day On time")
        } else {
            fine = 15 * (inDay-exDay)
        }
    } else {
        fine = 500 * (inMonth-exMonth)
    }
} else {
    fine = 10000
}
print(fine)