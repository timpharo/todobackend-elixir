defmodule TodobackendWeb.TodoController do
  use TodobackendWeb, :controller
  import Ecto.Query
  alias Todo_Item
  alias Todobackend.Repo

  def get do

  end


  def index(conn, _params) do
    todoItems = Todo_Item |> Repo.all
    json conn, todoItems
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