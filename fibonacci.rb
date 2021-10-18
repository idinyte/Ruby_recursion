def fibs(n)
  fib = [0, 1]
  return fib[0...n] if n <= 2

  for i in (2...n)
    fib << fib[i-1] + fib[i-2]
  end
  fib
end

def fibs_rec(n)
  n <= 2 ? [0, 1][0...n] : fibs_rec(n - 1) << fibs_rec(n - 1)[-2] + fibs_rec(n - 1)[-1]
end

p fibs(7)
p fibs_rec(7)