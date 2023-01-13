defmodule Lec1 do
  def fact(n) do
    if n <= 0 do
      1
    else
      n * fact(n - 1)
    end
  end  

  # version using multiple clauses
  def fact2(n) when n <= 0 do  # note guard
    1
  end

  def fact2(n) do
    n * fact2(n-1)
  end

  # tail-recursive version
  def factorial(n) do
    factorial(n, 1)
  end

  defp factorial(n, a) do  # note: private function
    if n <= 0 do
      a
    else
      factorial(n-1, n*a)
    end
  end

  def reverse([]), do: []

  def reverse([h|t]), do: reverse(t) ++ [h]

  def fizzbuzz(n) do
    fizzbuzz(n, 1)
  end

  defp fizzbuzz(n, i) when i > n do
    :ok
  end

  defp fizzbuzz(n, i) do
    fizzbuzz_output(i)
    fizzbuzz(n, i + 1)
  end
 
  def fizzbuzz2(n), do: Enum.each(1..n, &fizzbuzz_output/1)

  defp fizzbuzz_output(n) do
    cond do
      rem(n, 15) == 0 -> IO.puts("fizzbuzz")
      rem(n, 5) == 0 -> IO.puts("buzz")
      rem(n, 3) == 0 -> IO.puts("fizz")
      true -> IO.puts("#{n}")
    end
  end    
end

