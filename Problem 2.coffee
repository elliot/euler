"""
By considering the terms in the Fibonacci sequence whose values do not 
exceed four million, find the sum of the even-valued terms.

Answer: 4613732

Place:  166924th 
"""

f1 = f2 = f3 = 1
sum = 0

# Linear fibonacci will make it a lot easier
while f2 <= 4000000
  # Do the fib operation
  f3 = f1 + f2
  # Only add up the even terms
  sum = sum + f3 if f3 % 2 is 0
  # Switch in place
  [f1,f2] = [f2,f3]
  
console.log sum