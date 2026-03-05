// Problem: Best Time to Buy and Sell Stock (LeetCode 121)
// Time Complexity: O(n) - Single pass through the prices array.
// Space Complexity: O(1) - Only two variables used regardless of input size.

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var min = Int.max
        var max = 0
        
        for price in prices {
            if price < min {
                min = price
            }
            
            let currentProfit = price - min
            if currentProfit > max {
                max = currentProfit
            }
        }
        return max
    }
}
