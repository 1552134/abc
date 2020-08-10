defmodule SciBackendWeb.FallbackController do
  use SciBackendWeb, :controller

  def call(conn, {:error, :bad_request, msg}) do
    msg = %{msg: msg, tracing_id: Enum.at(Plug.Conn.get_resp_header(conn, "x-request-id"), 0)}

    conn
    |> put_status(:bad_request)
    |> render(SciBackendWeb.ErrorView, "400.json", msg: msg)
  end
end
