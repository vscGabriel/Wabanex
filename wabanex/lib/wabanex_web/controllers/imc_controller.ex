defmodule WabanexWeb.IMCController do
  use WabanexWeb, :controller

  alias Wabanex.IMC
  def index(conn, params) do
    params
    |> IMC.calculate()
    |>handle_response(conn)

  end

  def handle_response({:ok, result}, conn), do: render_response(conn,result, :ok) #return the good result if finded a file valid

  def handle_response({:error, result}, conn), do: render_response(conn,result, :bad_request) #return the bad result if not finded a file valid


  defp render_response(conn, result, status) do
    conn
    |> put_status(status)
    |> json(%{result: result})

  end
end
