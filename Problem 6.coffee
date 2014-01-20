"""
The sum of the squares of the first ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)^2 = 55^2 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

Answer: 25164150

Place:  203426
"""

seq = [1..100]

sumOfSquares = seq.reduce (prev, next) -> prev + Math.pow(next, 2)
squareOfSums = seq.reduce (prev, next) -> prev + next
squareOfSums = Math.pow(squareOfSums, 2)

difference = squareOfSums - sumOfSquares

console.log "Difference is #{difference}"