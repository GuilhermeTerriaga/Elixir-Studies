defmodule MeuModulo.Concat do
  def join(string_a, string_b \\ nil, separador \\ " ")
  # quando o parametro pode ser nulavel, pode-se começar o nome deste com _
  def join(string_a, string_b, _separador) when is_nil(string_b) do
    string_a
  end

  def join(string_a, string_b, separador) do
    string_a <> separador <> string_b
  end
end
