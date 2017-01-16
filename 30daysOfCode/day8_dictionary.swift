/**
    Day 8: Dictionaries and Maps
    https://www.hackerrank.com/challenges/30-dictionaries-and-maps

**/
import Foundation
let testCases = Int(readLine()!)!
var phoneBook = [String: String]()
var pair = [String]()
for i in 1...testCases {
    pair = readLine()!.characters.split(separator: " ").map(String.init)   
    phoneBook[pair[0]] = pair[1]
}

while true {
    let name: String? = readLine(strippingNewline: true)
    
    guard let check = name else {
        break
    }
    
    guard let phone = phoneBook[check] else {
        print("Not found")
        continue
    }
    
    print("\(check)=\(phone)")
}

