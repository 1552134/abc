defmodule SciBackendWeb.UserView do
    use SciBackendWeb, :view
    alias SciBackendWeb.UserView
    
  def render("user.json", %{user: user, token: token}) do
    %{id: user.id,
      email: user.email,
      password: user.password,
      token: token
    }
  end
end
  