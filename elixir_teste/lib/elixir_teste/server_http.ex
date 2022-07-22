defmodule ElixirTeste.ServerHttp do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, name: :servidor_http)
  end

  def init(:ok) do
    {:ok, %{}}
  end

  def handle_cast(:ping, _) do
    ElixirTeste.Httpget.get()
    {:noreply, %{}}
  end
end
