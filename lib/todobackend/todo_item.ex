defmodule Todo_Item do
  use Ecto.Schema

  schema "todo" do
    field :title
    field :complete, :boolean
    field :url
    field :order, :integer
  end
end