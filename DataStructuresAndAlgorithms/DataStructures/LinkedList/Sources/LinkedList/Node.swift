import Foundation

public final class Node<T> {
    var data: T
    weak var next: Node?
    
    public init(_ data: T, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}
