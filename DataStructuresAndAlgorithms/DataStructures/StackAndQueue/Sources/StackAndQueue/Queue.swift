import Foundation

/// FIFO (Firs-in First-out)
/// Enqueue O(1) DequeueO(n)
public final class Queue<T> {
    public var isEmpty: Bool {
        array.isEmpty
    }
    
    public var count: Int {
        array.count
    }
    
    private var array = [T]()
    
    public init () {}
}

public extension Queue {
    func enque(_ item: T) {
        array.append(item)
    }
    
    func deque() -> T? {
        guard !array.isEmpty else { return nil }
        return array.removeFirst()
    }
    
    func peek() -> T? {
        array.first
    }
}
