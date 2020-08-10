defmodule SciBackendWeb.Guardian do
  use Guardian, otp_app: :sci_backend

  alias SciBackend.UserCreator
  alias SciBackend.User

  @type user :: User
  def subject_for_token(user, _claims) do
    sub = to_string(user.id)
    {:ok, sub}
  end

  @type email :: string, password :: string
  def authenticate(email, password) do
    with {:ok, user} <- UserCreator.get_by_email(email) do
      case validate_password(password, user.encrypted_password) do
        true ->
          create_token(user)
        false ->
          {:error, :unauthorized}
      end
    end
  end

  @type encrypted_password :: string
  defp validate_password(password, encrypted_password) do
    Comeonin.Bcrypt.checkpw(password, encrypted_password)
  end
  
  @spec create_token(user) :: {:ok, Guardian.Token.token(), Guardian.Token.claims()} | {:error, any()}
  defp create_token(user) do
    {:ok, token, _claims} = encode_and_sign(user)
    {:ok, user, token}
  end

end