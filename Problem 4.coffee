"""
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

Answer: 906609

Place:  188171
"""

isPalindrome = (number) ->
    original = number
    reversed = 0

    while number > 0
        reversed = parseInt(reversed * 10 + number % 10)
        number = parseInt(number / 10)

    original is reversed


digits = 3

max = 0
max = 9 + (max * 10) for digit in [1..digits]

min = Math.pow(10, digits - 1)

palindromes = []

for x in [min..max]
    for y in [min..max]
        product = x * y
        palindromes.push(product) if isPalindrome(product)
            
biggestOne = Math.max.apply(@, palindromes)

console.log "Found #{biggestOne}"