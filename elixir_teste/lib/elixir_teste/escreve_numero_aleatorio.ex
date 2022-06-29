defmodule ElixirTeste.EscreveNumeroAleatorio do
  def escreve() do
    caminho_arquivo =
      Path.join([
        :code.priv_dir(:elixir_teste),
        'arquivo.txt'
      ])

    aleatorio = :rand.uniform(1000)
    File.write!(caminho_arquivo, "Número aleatório: #{aleatorio}")
  end
end
