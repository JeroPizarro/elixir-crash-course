defmodule Example do
  # The code defined in this module is executed during compiling time, not in runtime.

  use Application
  # Use _ to indicate an unnused argument and avoid compiler warnings
  def start(_type, args) do
    IO.puts(args)
    IO.puts(Example.hello())
    Supervisor.start_link([], strategy: :one_for_one) # Process that reset child processes if one fail. [] for children processes. 'strategy' defines how to do if a process fails.
  end

  def hello do
    :world
  end
end
