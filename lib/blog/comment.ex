defmodule Blog.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, TypeID, autogenerate: true, prefix: "comment", type: :uuid}
  @foreign_key_type TypeID

  schema "comments" do
    field :body, :string
    belongs_to :post, Blog.Post

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:body])
    |> validate_required([:body])
  end
end
