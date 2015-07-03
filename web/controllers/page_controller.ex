defmodule RecyclingHeaders.PageController do
  use RecyclingHeaders.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
