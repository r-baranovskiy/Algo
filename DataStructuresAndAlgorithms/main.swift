import Foundation
import LinkedList
import StackAndQueue

//MARK: - Учитывая массив целых чисел nums и целое число target, верните индексы двух чисел так, чтобы их сумма равнялась target.


/// O(n)
func findSumForTarget(_ arr: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    var result = [Int]()
    
    for (index, num) in arr.enumerated() {
        if let i = dict[target - num] {
            result.append(i)
            result.append(index)
            return result
        }
        dict[num] = index
    }
    return result
}

//MARK: - Необходимо удалить дубликаты в массиве и вернуть количество элементов.

/// O(n2)
func returnNotDuplicateCount(_ arr: inout[Int]) -> Int {
    var prev: Int?
    var index = 0
    
    for num in arr {
        if num == prev {
            arr.remove(at: index)
        } else {
            prev = num
            index += 1
        }
    }
    
    return arr.count
}
