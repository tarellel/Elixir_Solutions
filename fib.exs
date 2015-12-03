defmodule Fib do
  def calculate(num \\ 0)

  def calculate(0) do 0 end
  def calculate(1) do 1 end

  def calculate(num)
  when is_integer(num) and num > 1 do
      (calculate(num-1) + calculate(num-2))
  end
end

IO.puts Fib.calculate
IO.puts Fib.calculate(1)
IO.puts Fib.calculate(10)
IO.puts Fib.calculate(32)
