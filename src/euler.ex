defmodule EulerMain do

  def main(args) do
    all_eulers = ["01", "02", "03", "04"]
    list = if Enum.empty?(args), do: all_eulers, else: args
    Enum.map(list, &run_euler/1)
  end

  defp run_euler(num) do
    name = "Euler" <> num
    sym = String.to_atom("Elixir.#{name}")
    IO.write "#{name}: "
    IO.puts apply(sym, :run, [])
  end
end
