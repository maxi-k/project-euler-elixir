defmodule Util do

  def prime_factors(1), do: [1]
  def prime_factors(n) when is_integer(n) do
    max = trunc(Float.ceil(:math.sqrt(n)))
    Enum.filter((1..max), fn(x) -> rem(n, x) == 0 && prime?(x) end)
  end

  def prime?(1), do: false
  def prime?(2), do: true
  def prime?(n) when rem(n, 2) == 0, do: false
  def prime?(n) when is_integer(n) do
    Enum.count(prime_factors(n)) == 0
  end


  @doc "Measures the time it takes given function to execute"
  def time(function) do
    function
    |> :timer.tc
    |> elem(0)
    |> Kernel./(1_000_000)
  end

end
