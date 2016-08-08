@storage = []

def fib(n)
  return n if n <= 1
  @storage[n] ||= fib(n-1) + fib(n-2)
end 

puts fib(3000)
puts fib(7500)
puts fib(10000)
