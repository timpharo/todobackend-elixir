defmodule TodobackendWeb.Router do
  use TodobackendWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
    plug :cors
  end

  scope "/", TodobackendWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/cake", PageController, :cake
  end

  scope "/api/v1/todo", TodobackendWeb do
    pipe_through :api
    get "/", TodoController, :index
    post "/", TodoController, :post
    delete "/", TodoController, :delete
    options "/", TodoController, :options
  end

  def cors(conn, _opts) do
    conn
    |> put_resp_header("Access-Control-Allow-Origin", "*")
    |> put_resp_header("Access-Control-Allow-Headers", "Content-Type")
    |> put_resp_header("Access-Control-Allow-Methods", "GET,PUT,PATCH,OPTIONS,DELETE,POST")
  end
end
