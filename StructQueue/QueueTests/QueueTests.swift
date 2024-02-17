import XCTest

final class QueueTests: XCTestCase {
    private var queueArray = StructQueue<String>()
    
    override func setUp() {
        queueArray.enqueue("One")
        queueArray.enqueue("First")
        queueArray.enqueue("Third")
    }
    
    func testEnqueueArray() {
        XCTAssertEqual(queueArray.peek, "One")
    }
    
    func testDequeueArray() {
        queueArray.dequeue()
        queueArray.dequeue()
        XCTAssertEqual(queueArray.peek, "Third")
        queueArray.dequeue()
        XCTAssertTrue(queueArray.isEmpty)
    }
}
