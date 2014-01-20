"""
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

Answer: 906609

Place:  188171

Adjustments
    - Changed loops to count down instead of up
    - Only stored the largest palindrome instead of all in the number space
    - Short cut the palindrome check if the product isn't larger than the current largest
    - Avoided double counting (i.e. x = 132, y = 528 || x = 528, y = 132) by using x as the max bound
"""

isPalindrome = (number) ->
    original = number
    reversed = 0

    while number > 0
        reversed = parseInt(reversed * 10 + number % 10)
        number = parseInt(number / 10)

    original is reversed

# How many digits (i.e. 3 = max of 999)
digits = 3

# Setup our bounds dynamically based off the digits required
max = 0
max = 9 + (max * 10) for digit in [1..digits]

min = Math.pow(10, digits - 1)

largestPalindrome = 0

# Count down from largest
for x in [max..min]
    for y in [max..x]
        product = x * y

        if product >= largestPalindrome
            largestPalindrome = product if isPalindrome(product)
            

console.log "Found #{largestPalindrome}"