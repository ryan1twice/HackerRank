/**
    Day 28: RegEx, Patterns, and Intro to Databases
    https://www.hackerrank.com/challenges/30-regex-patterns

    Swift RegEx taken from:
    http://stackoverflow.com/a/25471164

    Edited to work for gmail here:
    http://regexr.com/

    Sort Dictionary into array:
    http://stackoverflow.com/a/25382196
**/
import Foundation
let testCases = Int(readLine()!)!
var input = [String]()
var emailBook = [String:String]()
var email = ""
let emailRegEx = "[A-Z0-9a-z._%+-]+@[gmail]+\\.[A-Za-z]{2,}"
let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)

for i in 0..<testCases {
    input = readLine()!.components(separatedBy: " ").map{ String($0)! }
    email = input[1]
    
    if emailTest.evaluate(with: email) {
        emailBook[input[1]] = input[0]
    }
}

let sortedNames = Array(emailBook.values).sorted(by: <)
for name in sortedNames {
    print(name)
}