defmodule App.UserTest do
  use App.ModelCase

  alias App.User

  @valid_attrs %{email: "some content", name: "some content", password: "some content", sex: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end