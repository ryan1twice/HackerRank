/**
    Day 4: Class vs. Instance
    https://www.hackerrank.com/challenges/30-class-vs-instance

    (1) yearPasses() should increase the "age" instance variable by 1
    (2) amIOld() should perform the following conditional actions:
        * If age < 13, print You are young..
        * If age >= 13 and age < 18, print You are a teenager..
        * Otherwise, print You are old..
**/
import Foundation
class Person {
    var age: Int = 0

    init(initialAge: Int) {
        if initialAge < 0 {
            print("Age is not valid, setting age to 0.")
            age = 0
        } else {
            age = initialAge
        }
    }

    func amIOld() {
        if age < 13 {
            print("You are young.")
        } else if age >= 13 && age < 18 {
            print("You are a teenager.")
        } else {
            print("You are old.")
        }
    }

    func yearPasses() {
        age += 1
    }
}
let t = Int(readLine()!)!

for _ in 0..<t {
    let age = Int(readLine()!)!
    let p = Person(initialAge: age)

    p.amIOld()

    for i in 1...3 {
        p.yearPasses()
    }

    p.amIOld()

    print("")
}