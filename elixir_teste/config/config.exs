import Config

config :elixir_teste, ElixirTeste.Agendador,
  jobs: [
    {"* * * * *", fn -> GenServer.cast(:servidor_aleatorio, :escreve) end},
    {"* * * * *", fn -> GenServer.cast(:servidor_http, :ping) end}
  ]
