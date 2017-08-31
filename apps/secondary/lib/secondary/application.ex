defmodule Secondary.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: Secondary.Worker.start_link(arg)
      # {Secondary.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Secondary.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def start_phase(what, _, _) do
    IO.puts "SECONDARY: #{inspect what}"
  end

end
