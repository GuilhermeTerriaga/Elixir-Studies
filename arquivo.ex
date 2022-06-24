defmodule MeuModulo.Arquivos do
  def ler(arquivo) do
    case File.read(arquivo) do
      {:ok, conteudo} -> IO.puts(conteudo)
      {:error, :enoent} -> "Arquivo inexistente"
      {:error, :eacces} -> "Sem permissão para leitura"
      _ -> "Erro desconhecido"
    end
  end
end
