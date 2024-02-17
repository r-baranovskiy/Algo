import XCTest

final class QueueStackTests: XCTestCase {
    var queueStack = QueueStack<String>()
    
    override func setUp() {
        queueStack.enqueue("First")
        queueStack.enqueue("Second")
        queueStack.enqueue("Third")
    }
    
    func testEnqueueStack() {
        XCTAssertEqual(queueStack.peek, "First")
    }
    
    func testDequeueStack() {
        queueStack.dequeue()
        queueStack.dequeue()
        XCTAssertEqual(queueStack.peek, "Third")
        queueStack.dequeue()
        XCTAssertTrue(queueStack.isEmpty)
    }
}
