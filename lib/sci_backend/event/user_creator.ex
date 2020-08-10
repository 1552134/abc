defmodule SciBackend.UserCreator do

  import Ecto.Query, warn: false
  alias SciBackend.Repo

  alias SciBackend.User

  @type id :: string
  @spec get_user!(id) :: Ecto.Schema.t() 
  def get_user!(id), do: Repo.get!(User, id)

  @type attrs :: Pow.Ecto.Schema.Fields.attrs
  @spec create_user(attrs) :: {:ok, Ecto.Schema.t()} | {:error, Ecto.Changeset.t()}
  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  @type email :: string
  @spec get_by_email(email) :: Ecto.Schema.t() | nil
  def get_by_email(email) do
    case Repo.get_by(User, email: email) do
      nil ->
        {:error, :not_found}
      user ->
        {:ok, user}
    end
  end
end
