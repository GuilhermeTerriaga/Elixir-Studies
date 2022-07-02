import Config

config :elixir_teste, ElixirTeste.Agendador,
  jobs: [
    {"* * * * *", fn -> IO.puts("Executando!") end}
  ]
