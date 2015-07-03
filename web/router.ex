defmodule RecyclingHeaders.Router do
  use RecyclingHeaders.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RecyclingHeaders do
    pipe_through :api

    resources "/cars", CarsController, only: [:create, :index]
  end
end
