defmodule MeuModulo do
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1]

  def ola_mundo() do
    puts("Olá Mundo!")
    inspect(MyMath.soma(2, 4))
  end

  def exibe_if_par(numero) do
    require Integer

    if Integer.is_even(numero) do
      puts("O numero #{numero} é par")
    else
      puts("Não é par")
    end
  end

  defp inspect(parametro) do
    puts("Comecando a inspecao")
    puts(parametro)
    puts("terminando a inspecao")
  end
end
