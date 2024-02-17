import Foundation

struct QueueStack<T> {
    private var dequeueStack = [T]()
    private var enqueueStack = [T]()
}

extension QueueStack: Queue {
    var isEmpty: Bool {
        dequeueStack.isEmpty && enqueueStack.isEmpty
    }
    
    var peek: T? {
        !dequeueStack.isEmpty ? dequeueStack.last : enqueueStack.first
    }
    
    mutating func enqueue(_ element: T) {
        enqueueStack.append(element)
    }
    
    @discardableResult
    mutating func dequeue() -> T? {
        if dequeueStack.isEmpty {
            dequeueStack = enqueueStack.reversed()
            enqueueStack.removeAll()
        }
        return dequeueStack.popLast()
    }
}
