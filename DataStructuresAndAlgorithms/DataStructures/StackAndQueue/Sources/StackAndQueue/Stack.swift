import Foundation

/// LIFO (Last-in First-out)
/// Push and pop are O(1) operations
public final class Stack<T> {
    public var isEmpty: Bool {
        array.isEmpty
    }
    
    public var count: Int {
        array.count
    }
    
    private var array = [T]()
    
    public init () {}
}

public extension Stack {
    func push(_ item: T) {
        array.append(item)
    }
    
    func pop() -> T? {
        array.popLast()
    }
    
    func peek() -> T? {
        array.last
    }
}
