defmodule Games.Application do
  use Application

  @impl true
  def start(_start, _args) do
    IO.puts("Starting Games.Application")
    children = []

    #See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options

    opts = [strategy: :one_for_one, name: Games.Supervisor]
    Supervisor.start_link(children, opts)

  end
end
