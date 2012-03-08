check = (x)->
  return x if (x % 3 is 0) or (x % 5 is 0)
  0 

total = 0
total = total + val for val in (check(x) for x in [1..1000-1])

console.log total