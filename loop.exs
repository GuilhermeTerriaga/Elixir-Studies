defmodule MeuModulo.Loop do
  def tabuada(multiplicador) do
    resultado = []
    tabuada(multiplicador, resultado, 1)
  end

  def calcula(multiplicador) when is_integer(multiplicador) and multiplicador >= 0 do
    tabuada2(multiplicador, 1)
  end

  defp tabuada(_, resultado, 11) do
    # List.to_string(resultado)
    resultado
  end

  defp tabuada(produto1, resultado, produto2) do
    tabuada(produto1, List.insert_at(resultado, -1, produto1 * produto2), produto2 + 1)
  end

  defp tabuada2(_, 11), do: []

  defp tabuada2(produto1, produto2) do
    [produto1 * produto2] ++ tabuada2(produto1, produto2 + 1)
  end
end
