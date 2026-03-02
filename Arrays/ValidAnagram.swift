// Problem: Valid Anagram (LeetCode 242)
// Time Complexity: O(n) - We only loop through the strings, no sorting.
// Space Complexity: O(1) - The dictionary will never hold more than 26 English letters.

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {return false}
        
        var letterCount = [Character: Int] ()

        for char in s {
            letterCount [char, default: 0] += 1
        }

        for char in t {
            letterCount [char, default: 0] -= 1

            if letterCount[char]! < 0 {
                return false
            }
        }
        return true
    }
}