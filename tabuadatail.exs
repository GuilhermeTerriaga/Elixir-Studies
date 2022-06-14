defmodule MeuModulo.Tabuada do
  def calcula(multiplicador, numerador \\ 1) do
    tabuada(multiplicador, numerador, [])
  end

  defp tabuada(_, 11, valores), do: valores

  defp tabuada(produto1, produto2, valores) do
    tabuada(produto1, produto2 + 1, valores ++ [produto1 * produto2])
  end
end
