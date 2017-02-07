defmodule App.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :email, :string
      add :sex, :integer

      timestamps()
    end

  end
end
