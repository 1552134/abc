defmodule SciBackendWeb.EventController do
  use SciBackendWeb, :controller
  alias SciBackend.{Repo, EventFetcher, Event, EventCreator}
  action_fallback(SciBackendWeb.FallbackController)

  def show(conn, %{"id" => id}) do
    detail = Repo.get(Event, id)
    render(conn, "show.json", detail: detail)
  end

  def index(conn, params) do
    with {:ok, events} <- EventFetcher.fetch_events(params) do
      render(conn, "index.json", events: events)
    end
  end

  def type(conn, params) do
    with {:ok, events} <- EventCreator.fetch_events_type(params) do
      render(conn, "index.json", events: events)
    end
  end
end
