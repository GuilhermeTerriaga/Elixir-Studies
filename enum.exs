defmodule MeuModulo.Enum do
  def primeiro(lista) do
    unless length(lista) == 0 do
      hd(lista)
    end

    # if length(lista) == 0 do
    #   nil
    # else
    #   hd(lista)
  end
end
