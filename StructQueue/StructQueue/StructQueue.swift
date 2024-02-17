import Foundation

protocol Queue {
    associatedtype Element
    
    var isEmpty: Bool { get }
    var peek: Element? { get }
    mutating func enqueue(_ element: Element)
    mutating func dequeue() -> Element?
}

struct StructQueue<T> {
    private var array = [T]()
}

extension StructQueue: Queue {
    var isEmpty: Bool {
        array.isEmpty
    }
    
    var peek: T? {
        array.first
    }
    
    @discardableResult
    mutating func dequeue() -> T? {
        isEmpty ? nil : array.removeFirst()
    }
    
    mutating func enqueue(_ element: T) {
        array.append(element)
    }
}
