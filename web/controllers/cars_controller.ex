defmodule RecyclingHeaders.CarsController do
  use RecyclingHeaders.Web, :controller

  def index(conn, _params) do
    conn |> put_status(200)
  end

  def create(conn, params) do
    conn
    |> put_status(200)
    |> json %{type: params["type"]}
  end
end
