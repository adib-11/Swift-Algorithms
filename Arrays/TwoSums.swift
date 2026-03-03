// Problem: Two Sum (LeetCode 1)
// Time Complexity: O(n) - We iterate through the array exactly once.
// Space Complexity: O(n) - The dictionary can hold up to n elements.

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var seen = [Int: Int]()
        
        for (i, num) in nums.enumerated() {
            let complement = target - num
            
            if let complementIndex = seen[complement] {
                return [complementIndex, i]
            }
            seen[num] = i
        }
        
        return []
    }
}