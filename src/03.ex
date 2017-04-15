defmodule Euler03 do
  require Util

  @doc """
  The prime factors of 13195 are 5, 7, 13 and 29.
  What is the largest prime factor of the number 600851475143 ?
  """
  def run do
    num = 600851475143
    Util.time(fn -> Enum.max(Util.prime_factors(num)) end)
  end


end
