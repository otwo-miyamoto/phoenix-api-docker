defmodule App.User do
  use App.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string
    field :password, :string
    field :sex, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :email, :password, :sex])
    |> validate_required([:name, :email, :password, :sex])
  end
end
