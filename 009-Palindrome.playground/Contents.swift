import Cocoa
import XCTest

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x != 0 else { return true }
        guard x > 0 else { return false }

        var number = x
        var digits: [Int] = []

        while number != 0 {
            digits.append(number % 10)
            number = number / 10
        }

        var left = 0
        var right = digits.count - 1
        var isPalindrome = true

        while left < right {
            if digits[left] == digits[right] {
                left += 1
                right -= 1
            }
            else {
                isPalindrome = false
                break
            }
        }

        return isPalindrome
    }
}

let testCases: [Int: Bool] = [
    121: true,
    -121: false,
    10: false,
    1: true,
    0: true,
    -2147447412: false,
]

let solution = Solution()

testCases.forEach { number, result in
    if solution.isPalindrome(number) == result {
        print("Good \(number)")
    }
    else {
        print("Bad \(number)")
    }
}
