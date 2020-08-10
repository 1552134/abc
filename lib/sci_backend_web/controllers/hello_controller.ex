defmodule SciBackendWeb.HelloController do
    use SciBackendWeb, :controller

    def index(conn, _params) do
      render(conn, "index.json")
    end
  end
