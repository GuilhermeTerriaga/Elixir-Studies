defmodule ElixirTeste.Httpget do
  use HTTPoison.Base

  def get do
    case HTTPoison.get("https://api.github.com") do
      {:ok, %HTTPoison.Response{status_code: 200}} ->
        IO.puts("status code: 200")

      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts("Not found :(")

      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect(reason)
    end
  end
end
