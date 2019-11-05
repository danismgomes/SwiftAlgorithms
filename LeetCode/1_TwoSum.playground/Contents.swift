import Foundation

//Given an array of integers, return indices of the two numbers such that they add up to a specific target.

//You may assume that each input would have exactly one solution, and you may not use the same element twice.

let nums = [2, 7, 11, 15]
let target = 9

//Because nums[0] + nums[1] = 2 + 7 = 9,
//return [0, 1].

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    //Dictionary [value, index]
    var seen: [Int: Int] = [:]
    
    //Go through the dictionary
    for i in 0..<nums.count {
        
        // If the complement is in the dictionary, return the indices.
        if let x = seen[target - nums[i]] {
            return [x, i]
            
        // Else (complement not found), add current number to dictionary. It may serve as a complement to another number.
        } else {
            seen[nums[i]] = i
        }
    }
    return [-1]
}
