/**
    Day 12: Inheritance
    https://www.hackerrank.com/challenges/30-inheritance
**/
import Foundation
// Class Person
class Person {
    var firstName: String
    var lastName: String
    var id: Int

    // Initializer
    init(firstNameString: String, lastNameString: String, identificationNumber: Int) {
        firstName = firstNameString
        lastName = lastNameString
        id = identificationNumber
    }

    // Print person data
    func printPerson() {
        print("Name: \(lastName), \(firstName)")
        print("ID: \(id)")
    }
} // End of class Person
class Student: Person {
    var testScores: [Int]

    init(firstName: String, lastName: String, identification: Int, scores: [Int]) {      
        self.testScores = scores
        super.init(firstNameString: firstName, lastNameString: lastName, identificationNumber: identification)
    }

    func calculate() -> String {
        let grade = average(testScores)
        switch grade {
        case _ where grade >= 90 && grade <= 100:
            return "O"
        case _ where grade >= 80 && grade < 90:
            return "E"
        case _ where grade >= 70 && grade < 80:
            return "A"
        case _ where grade >= 55 && grade < 70:
            return "P"
        case _ where grade >= 40 && grade < 55:
            return "D"
        case _ where grade < 40:
            return "T"
        default:
            return "Grading Error"
        }
    }
    
    func average(_ tests: [Int]) -> Float {
        var total = 0
        for grade in tests {
            total += grade
        }
        return Float(total/tests.count)
    }
} // End of class Student

let nameAndID = readLine()!.components(separatedBy: " ").map{ String($0)! }
let _ = readLine()
let scores = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let s = Student(firstName: nameAndID[0], lastName: nameAndID[1], identification: Int(nameAndID[2])!, scores: scores)

s.printPerson()
print("Grade: \(s.calculate())")