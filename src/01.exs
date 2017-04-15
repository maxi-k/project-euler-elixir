defmodule Euler01 do

  @doc """
  If we list all the natural numbers below 10 that are multiples of 3 or 5,
  we get 3, 5, 6 and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.
  """
  def run do
    (1..1000 - 1)
    |> Enum.filter(&is_valid?/1)
    |> Enum.reduce(0, &+/2)
  end

  @doc "Returns true if given number is valid in the sense of the exercise"
  def is_valid?(n) do
    rem(n, 3) == 0 || rem(n, 5) == 0
  end

end
