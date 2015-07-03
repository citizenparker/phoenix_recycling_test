defmodule RecyclingHeaders.CarsControllerTest do
  use RecyclingHeaders.ConnCase

  test "returns the argument you pass in" do
    conn = conn() |> put_req_header("content-type", "application/json") |> post("/cars", %{type: "Ford"} |> Poison.encode!)
    assert json_response(conn, 200) == %{"type" => "Ford"}
  end

  test "returns the argument you pass in when connection recycling" do
    conn = conn() |> get("/cars") |> put_req_header("content-type", "application/json") |> post("/cars", %{type: "Ford"} |> Poison.encode!)
    assert json_response(conn, 200) == %{"type" => "Ford"}
  end
end
