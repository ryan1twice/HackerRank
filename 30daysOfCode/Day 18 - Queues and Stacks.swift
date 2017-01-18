/**
    Day 18: Queues and Stacks
    https://www.hackerrank.com/challenges/30-queues-stacks
**/
class Solution {
    var queue = [String]()
    var stack = [String]()
    
    func pushCharacter(c: Character) {
        stack.append(String(c))
    }
    func enqueueCharacter(c: Character){
        queue.append(String(c))
    }
    func popCharacter() -> String{
        return stack.removeLast()
    
    }
    func dequeueCharacter() -> String{
        return queue.removeFirst()
    }
}
// read the string s.
let s = readLine()!

// create the Solution class object p.
let obj = Solution()

// push/enqueue all the characters of string s to stack.
for c in s.characters {
    obj.pushCharacter(c: c)
    obj.enqueueCharacter(c: c)
}

var isPalindrome = true

// pop the top character from stack.
// dequeue the first character from queue.
// compare both the characters.
for _ in 0..<(s.characters.count / 2) {
    if obj.popCharacter() != obj.dequeueCharacter() {
        isPalindrome = false

        break
    }
}

// finally print whether string s is palindrome or not.
if isPalindrome {
    print("The word, \(s), is a palindrome.")
} else {
    print("The word, \(s), is not a palindrome.")
}