/**
    Day 16: Exceptions - String to Integer
    https://www.hackerrank.com/challenges/30-exceptions-string-to-integer
**/
import Foundation

// Define an ErrorType 
enum StringToIntTypecastingError: Error {
    case BadString
}
// If typecasting is not possible, throw exception, otherwise return the Integer value
func stringToInt(inputString: String) throws -> Int {
    guard Int(inputString) != nil else { throw StringToIntTypecastingError.BadString }
    
    return Int(inputString)!
}
// Read the input
let inputString = readLine()!

do {
    try print(stringToInt(inputString: inputString))
} catch StringToIntTypecastingError.BadString {
    print("Bad String")
}