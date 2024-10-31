defmodule Blog.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:comments, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :body, :text
      add :post_id, references(:posts, on_delete: :nothing, type: :uuid)

      timestamps(type: :utc_datetime)
    end

    create index(:comments, [:post_id])
  end
end
