/**
    Day 15: Linked List
    https://www.hackerrank.com/challenges/30-linked-list
**/
import Foundation

class Node {
    var data: Int
    var next: Node?

    init(data: Int) {
        self.data = data
        self.next = nil
    }
}
func insert(head: Node!, data: Int!) -> Node {
    if head == nil { // Empty list
        return Node(data: data)
    } else if head.next == nil { // One item. Insert at next
        head.next = Node(data: data)
    } else if head.next != nil {
        // Traverse through the list
        insert(head: head.next, data: data)   
    }
    
    return head
}
func display(head: Node!) {
    var current: Node! = head

    while current != nil {
        print(current.data, terminator: " ")
        current = current.next
    }
}

var head: Node! = nil
let n: Int = Int(readLine()!)!

for _ in 0..<n {
    let element = Int(readLine()!)
    head = insert(head: head, data: element)
}

display(head: head)