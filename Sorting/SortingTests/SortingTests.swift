import XCTest

final class SortingTests: XCTestCase {
    let bubble = Bubble()
    let selection = Selection()
    
    let sortedArray = [1, 2, 3, 4, 8, 9, 11, 19, 20, 21, 22, 2121]
    var notSortedArray = [Int]()

    override func setUp() {
        notSortedArray = sortedArray.shuffled()
    }
    
    func testSortBubble() {
        let sortedArr = bubble.bubbleSort(notSortedArray)
        XCTAssertEqual(sortedArr, sortedArray)
    }
    
    func testSelection() {
        let sortedArr = selection.selectionSort(notSortedArray)
        XCTAssertEqual(sortedArr, sortedArray)
    }
}
