/**
    Day 23: BST Level-Order Traversal
    https://www.hackerrank.com/challenges/30-binary-trees
**/
// Start of Node class
// Start of Node class
class Node {
    var data: Int
    var left: Node?
    var right: Node?

    init(d : Int) {
        data  = d
    }
} // End of Node class

// Start of Tree class
class Tree {
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }

        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }

        return root
    }
    // Not sure why they want us to return an Int
    func levelOrder(root: Node?) -> Int {
        if root == nil {
            return 0
        }
        
        var queue = [root]
        var current = queue.first!
        while !queue.isEmpty {
            current = queue.first!
            print((current?.data)! as Any, terminator: " ")
            
            if current?.left != nil { queue.append(current?.left) }
            if current?.right != nil { queue.append(current?.right) }
            
            queue.removeFirst()
        }
        return 0
    }
} // End of Tree class

var root: Node?
let tree = Tree()

let t = Int(readLine()!)!

for _ in 0..<t {
    root = tree.insert(root: root, data: Int(readLine()!)!)
}

tree.levelOrder(root: root)