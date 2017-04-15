# Project Euler in Elixir

Some of Project Euler's exercises implemented in Elixir,
with the goal of getting better at the language.

The problems are not solved in the most
efficient/concise/beautiful/idiomatic way possible,
but rather in a way that explores the different features of the language.

## Running
- Run `mix deps.get` to get the `remix` dependency, which auto-reloads code
- Fire up `iex -S mix`
- Run `EulerXX.run` to run a file
- When editing and saving a file, `remix` will recompile the code

## Compiling
- Run `mix escript.build`, which produces a file called `project_euler_elixir`
- Running it (`./project_euler_elixir`) will run all implemented
  solutions to the euler problems
- Running it with arguments (`./project_euler_elixir 01 02`) will only
  run those solutions.
