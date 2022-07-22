defmodule ElixirTeste.Applicacao do
  use Application

  def start(_type, _args) do
    children = [
      ElixirTeste.Agendador,
      ElixirTeste.ServidorAleatorio
    ]

    opts = [strategy: :one_for_one, name: ElixirTeste.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
