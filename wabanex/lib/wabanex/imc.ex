defmodule Wabanex.IMC do
  def calculate(%{"filename" => filename}) do
    filename
    # faz a mesma coisa que a de baixo
    |> File.read()
    # só que via pipe operator
    |> handle_file()

    #  result = File.read(filename)
    #  handle_file(result)
  end

  defp handle_file({:ok, content}) do
    data =
      content
      # separa os elementos d arquivo passado em listas a partir da quebra de linha
      |> String.split("\n")
      # cria uma dicionary "parseando" cada line.
      |> Enum.map(fn line -> parse_line(line) end)
      |> Enum.into(%{})

    {:ok, data}
  end

  defp handle_file({:error, _reason}) do
    {:error, "Error while opening the file"}
  end

  defp parse_line(line) do
    line
    # separa cada elemento da linha em strings
    |> String.split(",")
    |> List.update_at(1, &String.to_float/1)
    |> List.update_at(2, &String.to_float/1)
    |> calculate_imc()
  end

  defp calculate_imc([name, height, weight]), do: {name, weight / (height * height)}
end
