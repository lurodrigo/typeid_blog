defmodule Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, TypeID, autogenerate: true, prefix: "post", type: :uuid}
  schema "posts" do
    field :title, :string
    field :body, :string

    has_many :comments, Blog.Comment
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :body])
    |> validate_required([:title, :body])
  end
end
