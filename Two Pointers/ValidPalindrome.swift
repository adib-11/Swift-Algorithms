// Problem: Valid Palindrome (LeetCode 125)
// Time Complexity: O(n) - We iterate through the string once with two pointers.
// Space Complexity: O(n) - We create an array from the filtered string.

class Solution {
    func isPalindrome(_ s: String) -> Bool  {
        
        let s = Array(s.lowercased().filter { $0.isLetter || $0.isNumber })
        var left = 0
        var right = s.count - 1
        
        while left <= right {
            if s[left] != s[right] { return false }
            left += 1
            right -= 1
        }
        
        return true
    }
}
