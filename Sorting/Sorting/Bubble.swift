import Foundation

struct Bubble {
    func bubbleSort<Element: Comparable>(_ array: [Element]) -> [Element] {
        let lenght = array.count
        var sortedArray = array
        
        for i in 0..<lenght {
            let end = (lenght - 1) - i
            
            for j in 0..<end {
                let nextIndex = j + 1
                if sortedArray[j] > sortedArray[j + 1] {
                    sortedArray.swapAt(j, nextIndex)
                }
            }
        }
        
        return sortedArray
    }
}
