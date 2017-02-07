defmodule App.User do
  use App.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string
    field :sex, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :sex])
    |> validate_required([:name, :sex])
  end
end
