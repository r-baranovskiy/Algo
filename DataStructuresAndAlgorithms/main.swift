import Foundation
import LinkedList

print("Hello, World!")

let list = LinkedList<Int>()

let node6 = Node(6)
let node5 = Node(5, node6)
let node4 = Node(4, node5)
let node3 = Node(3, node4)
let node2 = Node(2, node3)
let node1 = Node(1, node2)

let node11 = Node(11, node4)
let node10 = Node(10, node11)

print(list.lenght(node4))
