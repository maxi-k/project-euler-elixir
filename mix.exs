defmodule EulerMain.Mixfile do
  use Mix.Project

  def project do
    [app: :project_euler_elixir,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     elixirc_paths: ["src"],
     deps: deps()]
  end

  def application do
    [applications: applications(Mix.env)]
  end

  defp applications(:dev), do: applications(:all) ++ [:remix]
  defp applications(_all), do: [:logger]

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:remix, "~> 0.0.2", only: :dev}]
  end

end
defmodule Mix.Tasks.GetEnv do
  use Mix.Task
  def run(_args), do: IO.puts Mix.Project.config()
end
