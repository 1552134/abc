defmodule SciBackendWeb.UserController do
  use SciBackendWeb, :controller
  
  alias SciBackend.UserCreator
  alias SciBackend.User
  alias SciBackendWeb.Guardian
  
  action_fallback SciBackendWeb.FallbackController
  
  def create(conn, _params) do
    with {:ok, %User{} = user} <- UserCreator.create_user(_params),
      {:ok, token, _claims} <- Guardian.encode_and_sign(user) do
      conn
      |> put_status(:created)
      |> render("user.json", %{user: user, token: token})
    end
  end
    
  def signin(conn, %{"email" => email, "password" => password}) do
    with {:ok, user, token} <- Guardian.authenticate(email, password) do
      conn
      |> put_status(:created)
      |> render("user.json", %{user: user, token: token})
    end
  end
    
end
  