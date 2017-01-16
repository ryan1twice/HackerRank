/**
    Day 14: Scope
    https://www.hackerrank.com/challenges/30-scope
**/
import Foundation

class Difference {
    private var elements = [Int]()
    var maximumDifference : Int!
    var diff: Int!
    init(a: [Int]) {
        self.elements = a
        self.maximumDifference = 0
        self.diff = 0
    }
    
    func computeDifference() {
        for i in 0..<(elements.count/2) {
            for j in 1..<elements.count {
                diff = elements[i] - elements[j]
                diff = abs(diff)
                if diff > maximumDifference {
                    maximumDifference = diff
                }
            }
        }
    }
} // End of Difference class

let n = Int(readLine()!)!
let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let d = Difference(a: a)

d.computeDifference()

print(d.maximumDifference)