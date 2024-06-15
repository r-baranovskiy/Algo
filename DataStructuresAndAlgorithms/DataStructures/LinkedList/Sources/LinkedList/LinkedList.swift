import Foundation

public final class LinkedList<T: Hashable> {
    public var isEmpty: Bool {
        head == nil
    }
    
    private var head: Node<T>?
    
    public init() { }
}

//MARK: - Implementation

extension LinkedList {
    //MARK: - Set
    
    /// Вставка элемента в начало списка
    public func addFront(_ data: T) {
        let newNode = Node(data)
        newNode.next = head
        head = newNode
    }
    
    /// Вставка по индексу
    /// - Parameters:
    ///   - position: Позиция по которой будет вставлен элемент
    public func insert(_ data: T, at position: Int) {
        guard position != .zero else {
            addFront(data)
            return
        }
        
        let newNode = Node(data)
        var currentNode = head
        
        for _ in 0..<position - 1 {
            currentNode = currentNode?.next
        }
        newNode.next = currentNode?.next
        currentNode?.next = newNode
    }
    
    /// Вставка элемента в конец списка
    public func addBack(_ data: T) {
        let newNode = Node(data)
        if head == nil {
            head = newNode
            return
        }
        
        var node = head!
        while(node.next != nil) {
            node = node.next!
        }
        node.next = newNode
    }
    
    //MARK: - Get
    
    /// Возвращает первый элемент списка
    public func getFirst() -> T? {
        guard let head else { return nil }
        return head.data
    }
    
    /// Метод который возвращает последний элемент из списка
    public func getLast() -> T? {
        guard let head else { return nil }
        var node: Node? = head
        
        while node?.next != nil {
            node = node?.next
        }
        
        return node?.data
    }
    
    /// Длинна списка от текущего звена
    /// - Parameter head: Звено от которого отсчет
    public func lenght(_ head: Node<T>?) -> Int {
        guard let head else { return .zero }
        var current: Node? = head
        var count = 1
        
        while current?.next != nil {
            count += 1
            current = current?.next
        }
        
        return count
    }
    
    public func printList() {
        guard let head else { return }
        var result = [T]()
        var node: Node? = head
        result.append(node!.data)
        
        while node?.next != nil {
            result.append(node!.next!.data)
            node = node?.next
        }
        
        print(result)
    }
    
    //MARK: - Delete
    
    /// Удаление первого элемента путем замена на следующий
    public func deleteFirst() {
        head = head?.next
    }
    
    /// Удаление последнего элемента из списка
    public func deleteLast() {
        var node = head
        while node?.next?.next != nil {
            node = node?.next
        }
        
        node?.next = nil
        
//        var nextNode = head
//        var previousNode: Node<T>?
//        while(nextNode?.next != nil) {
//            previousNode = nextNode
//            nextNode = nextNode?.next
//        }
//        previousNode?.next = nil
    }
    
    /// Удаление элемента из списка по индексу
    public func delete(at position: Int) {
        guard position != .zero else {
            deleteFirst()
            return
        }
        
        var nextNode = head
        var previousNode: Node<T>?
        
        for _ in 0..<position {
            previousNode = nextNode
            nextNode = nextNode?.next
        }
        
        previousNode?.next = nextNode?.next
    }
    
    /// Очистка списка
    public func clear() {
        head = nil
    }
}
