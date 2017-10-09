defmodule TodobackendWeb.TodoController do
  use TodobackendWeb, :controller

  def index(conn, _params) do
    users = []
    json conn, users
  end

  def post(conn, params) do
    body = %{body: params}.body
    json conn, body
  end

  def delete(conn, _params) do
    users = []
    json conn, users
  end

  def options(conn, _params) do
    conn
    |> send_resp(200, "GET,POST,DELETE,OPTIONS,PUT")
  end

end