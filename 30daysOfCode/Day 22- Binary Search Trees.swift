/**
    Day 22: Binary Search Trees
    https://www.hackerrank.com/challenges/30-binary-search-trees
**/
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
    func getHeight(root: Node?) -> Int {
        if root == nil {
            return -1
        } else {
            return 1 + max(getHeight(root: root?.left), getHeight(root: root?.right))
        }
    } // End of getHeight function
} // End of Tree class

var root: Node?
let tree = Tree()

let t = Int(readLine()!)!

for _ in 0..<t {
    root = tree.insert(root: root, data: Int(readLine()!)!)
}

print(tree.getHeight(root: root))