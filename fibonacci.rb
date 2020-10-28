#iteration
def fibs(num)
  fib = []
  (num - (num - 2)).times do
    fib << 1
  end
  (num - 2).times do
    fib << ((fib[-2]) + (fib[-1]))
  end
  return fib
end

#recursion
def fib_rec(num, fib = [1, 1])
  return num if num < 2
  return fib if num < 3
  fib << fib[-2] + fib[-1]
  fib_rec(num - 1, fib) if num > 2
end