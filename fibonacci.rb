
  def recursive_fib(num)  

  fib =[0, 1]

        loop do 
        value = fib[-1] + fib[-2]
        break if value >= num
        fib << value
        end
      puts fib
  end

    def iteractive_fib(num)
      i, j = 0, 1
      while i <= num
        puts i
        i, j = j, i + j
      end
    end

    require 'benchmark'
    num = 35
    Benchmark.bm do |x|
       puts "recursive_fib(num): " 
      x.report("recursive_fib") {
       recursive_fib(num)
      }
      puts "iteractive_fib(num): "
      x.report("iteractive_fib") {
        iteractive_fib(num)
      }
     end 