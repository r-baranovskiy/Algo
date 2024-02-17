import Foundation

struct Stack<Element: Equatable>: Equatable {
    private var storage = [Element]()
    
    var isEmpty: Bool {
        peek() == nil
    }
    
    init() {}
    
    init(_ elements: [Element]) {
        self.storage = elements
    }
    
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    mutating func pop() -> Element? {
        storage.popLast()
    }
    
    func peek() -> Element? {
        storage.last
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        storage.map({ "\($0)" }).joined(separator: " ")
    }
}

extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Element...) {
        self.storage = elements
    }
}
