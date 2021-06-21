defmodule Wabanex.IMC do
  def calculate(%{"filename" => filename}) do
    filename
    |> File.read() #faz a mesma coisa que a de baixo
    |> handle_file() #só que via pipe operator

  #  result = File.read(filename)
  #  handle_file(result)
  end

  defp handle_file({:ok, content}) do
    data =
    content
    |>String.split("\n") #separa os elementos d arquivo passado em listas a partir da quebra de linha
    |>Enum.map(fn line -> parse_line(line) end)  # cria uma dicionary "parseando" cada line.
    |>Enum.into(%{})

    {:ok, data}
  end

  defp handle_file({:error, _reason}) do
    {:error, "Error while opening the file"}
  end

  defp parse_line(line) do
    line
    |> String.split(",") # separa cada elemento da linha em strings
    |>List.update_at(1, &String.to_float/1)
    |>List.update_at(2, &String.to_float/1)
    |>calculate_imc()
  end

  defp calculate_imc([name, height, weight]), do: {name, weight/(height*height)}


end
