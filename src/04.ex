defmodule Euler04 do

  @doc """
  A palindromic number reads the same both ways.
  The largest palindrome made from the product of two 2-digit numbers is
  9009 = 91 × 99.

  Find the largest palindrome made from the product of two 3-digit numbers.
  ---
  Explores Tasks and how to apply them to simple problems.
  """
  def run do
    (100..999)
    |> Enum.map(fn(n) ->
      Task.async(fn ->
        Enum.reduce((n..999), [], fn(x, ls) -> [x * n | ls] end)
      end)
    end)
    |> Task.yield_many(1000)
    |> Enum.map(fn({_task, {:ok, res}}) -> res end)
    |> List.flatten
    |> Enum.filter(&palindrome?/1)
    |> Enum.max
  end

  @doc "Returns true if given number is a palindrome"
  def palindrome?(n) when is_integer(n) do
    str = Integer.to_string(n)
    str == String.reverse(str)
  end
end
