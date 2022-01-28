defmodule MeuModulo.Enum do
  def primeiro_unless(lista) do
    unless length(lista) == 0 do
      hd(lista)
    end
  end

  def primeiro_if(lista) do
    if length(lista) == 0 do
      nil
    else
      hd(lista)
    end
  end

  def primeiro([]), do: nil
  def primeiro(lista), do: hd(lista)
end
