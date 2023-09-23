-- Write a Lua program that generates Fibonacci numbers using coroutines. Create a coroutine that produces Fibonacci numbers one by one, and another coroutine that prints the first 10 Fibonacci numbers.
-- Function to create a coroutine that generates Fibonacci numbers

function fibonacciGenerator()
    local a, b = 0, 1
    while true do
      coroutine.yield(a)
      a, b = b, a + b
    end
  end
  
  -- Create a coroutine to generate Fibonacci numbers
  local fibCoroutine = coroutine.create(fibonacciGenerator)
  
  -- Function to create a coroutine that prints the first 10 Fibonacci numbers
  function printFirst10FibonacciNumbers()
    for i = 1, 10 do
      local status, value = coroutine.resume(fibCoroutine)
      if not status then
        print("Error:", value)
        return
      end
      print(value)
    end
  end
  
  -- Create a coroutine to print the first 10 Fibonacci numbers
  local printCoroutine = coroutine.create(printFirst10FibonacciNumbers)
  
  -- Run the coroutines
  coroutine.resume(printCoroutine)