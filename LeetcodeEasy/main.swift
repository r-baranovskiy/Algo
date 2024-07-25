import Foundation

//MARK: - Contains Duplicate

/*
 Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
 */

func containsDuplicate(_ nums: [Int]) -> Bool {
    var cnt: [Int: Bool] = [:]
    
    for num in nums {
        if cnt[num] == true {
            return true
        }
        
        cnt[num] = true
    }
    
    return false
}




//MARK: - Missing Number

/*
 Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.
 
 Example 1:

 Input: nums = [3,0,1]
 Output: 2
 Explanation: n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.
 Example 2:

 Input: nums = [0,1]
 Output: 2
 Explanation: n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number in the range since it does not appear in nums.
 Example 3:

 Input: nums = [9,6,4,2,3,5,7,0,1]
 Output: 8
 Explanation: n = 9 since there are 9 numbers, so all numbers are in the range [0,9]. 8 is the missing number in the range since it does not appear in nums.
 
 */

func missingNumber(_ nums: [Int]) -> Int {
    let lenght = nums.count
    var cnt = Array(repeating: 0, count: lenght + 1)
    
    for num in nums {
        cnt[num] = 1
    }
    
    for i in (0...lenght) {
        if cnt[i] == 0 {
            return i
        }
    }
    
    return lenght
}
