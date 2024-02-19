import XCTest

final class SortsTests: XCTestCase {
    let bubble = Bubble()
    let selection = Selection()
    let insertion = Insertion()
    let sortedArray = [1, 2, 3, 4, 8, 9, 11, 19, 20, 21, 22, 2121]
    var notSortedArray = [Int]()
    
    override func setUp() {
        notSortedArray = [1, 4, 2, 8, 19, 9, 20, 11, 22, 2121, 21, 3]
    }
    
    func testSortBubble() {
        var arr = notSortedArray
        bubble.bubbleSort(&arr)
        XCTAssertEqual(sortedArray, arr)
    }
    
    func testSelectionSort() {
        var arr = notSortedArray
        selection.selectionSort(&arr)
        XCTAssertEqual(sortedArray, arr)
    }
    
    func testInserttionSort() {
        var arr = notSortedArray
        insertion.insertionSort(&arr)
        XCTAssertEqual(sortedArray, arr)
    }
}
