"""
This is the Project Euler solution to the problem.


------------------------------------------------------------
Explanation:

The Fibonacci sequence looks like this:

1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610 ...
      ^        ^          ^           ^              ^

Every third number in the sequence so we don't need to 
calculate the odd numbers falling on the 1st and 2nd places.

In other words:

x, y, x + y, x + 2y, 2x + 3y, 3x + 5y
"""

[f1, f2, sum] = [1, 1, 0]

while sum < 4000000
  sum = sum + f1 + f2
  
  [f1, f2] = [(f1 + 2 * f2), (2 * f1 + 3 * f2)]
  
console.log sum