
def iterative_fib(n)
    if n==0
        return 0
    end
    n_1=0
    n_2= 1
    n_3= 1
    x=2
    while x <= n
        n_3 = n_1 + n_2
        n_1= n_2
        n_2 = n_3 
        x+=1
    end
       return n_3 
end

def recursive_fib(n)
    if n <= 1
        return n
    end
    return recursive_fib(n-1) + recursive_fib(n-2)
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end