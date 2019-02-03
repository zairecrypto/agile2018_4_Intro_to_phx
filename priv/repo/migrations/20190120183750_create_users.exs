defmodule Afrotouch.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :username, :string #added
      add :password, :string #added

      timestamps()
    end

  end
end
