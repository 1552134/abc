defmodule SciBackendWeb.PageController do
  use SciBackendWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
