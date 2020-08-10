defmodule SciBackendWeb.HelloView do
    use SciBackendWeb, :view

    def render("index.json", %{}) do
        %{hello: "world"}
    end
end
