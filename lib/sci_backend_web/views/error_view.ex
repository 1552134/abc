defmodule SciBackendWeb.ErrorView do
  use SciBackendWeb, :view

  @moduledoc """
  Conveniences for render error json data.
  """

  def render("400.json", %{msg: msg}) do
    %{
      error: %{
        tracingId: msg.tracing_id,
        status: 400,
        message: msg.msg,
        detail: []
      }
    }
  end
end
