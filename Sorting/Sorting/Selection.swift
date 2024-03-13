import Foundation

struct Selection {
    func selectionSort<Element: Comparable>(_ array: [Element]) -> [Element] {
        let n = array.count
        var sortedArray = array
        
        for i in 0..<(n - 1) {
            var minIndex = i
            
            for j in (i + 1)..<n {
                if sortedArray[j] < sortedArray[minIndex] {
                    minIndex = j
                }
            }
            
            if minIndex != i {
                sortedArray.swapAt(i, minIndex)
            }
        }
        
        return sortedArray
    }
}
