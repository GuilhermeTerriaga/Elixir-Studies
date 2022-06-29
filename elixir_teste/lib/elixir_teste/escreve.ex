defmodule Mix.Tasks.Escreve do
  @moduledoc """
  Documentacao da tarefa

  to run:
  'mix escreve'
  """
  use Mix.Task

  @shortdoc "Escreve um número aleatório no arquivo.txt"
  def run(_) do
    ElixirTeste.EscreveNumeroAleatorio.escreve()
  end
end
