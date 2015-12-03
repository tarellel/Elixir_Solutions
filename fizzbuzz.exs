defmodule Fizzbuzz do
  def step(max \\ 100)

  def step(max) when is_integer(max) and max > 0 do
    Enum.map((1..max), fn x -> process(rem(x,3), rem(x,5), x)  end )
  end

  # divisible of 3 and 5
  defp process(0, 0, n), do: IO.puts "#{n}: FizzBuzz"
  defp process(0, _, n), do: IO.puts "#{n}: Fizz"
  defp process(_, 0, n), do: IO.puts "#{n}: Buzz"
  defp process(_, _, n), do: IO.puts "#{n}: ----"
end

Fizzbuzz.step(50)
