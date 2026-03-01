// Problem: Contains Duplicate (LeetCode 217)
// Time Complexity: O(n) - We iterate through the array once.
// Space Complexity: O(n) - The Set can grow to the size of the array.

class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var seen = Set<Int>()
        for num in nums {
            if seen.contains(num) {
                return true
            }
            seen.insert(num)
        }
        return false
    }
}