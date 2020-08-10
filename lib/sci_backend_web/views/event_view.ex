defmodule SciBackendWeb.EventView do
  use SciBackendWeb, :view
  alias SciBackendWeb.EventView
  alias SciBackendWeb.MetaView

  @moduledoc """
  Conveniences for render event json data.
  """

  @doc """
  Render list events, include meta data from pagination.
  """
  def render("index.json", %{events: events}) do
    %{
      data: render_many(events.entries, EventView, "event.json"),
      meta: render_one(events.meta, MetaView, "meta.json")
    }
  end

  def render("show.json", %{detail: detail}) do
    %{data: render_one(detail, EventView, "event.json")}
  end

  def render("event.json", %{event: event}) do
    day = %{1 => "Sunday", 2 => "Moday", 3 => "Tuesday", 4 => "Wednesday", 5 => "Thurday", 6 => "Friday", 7 => "Saturday"}
    repeat = %{0 => "not repeat", 1 => "repeat every week", 2 => "repeat every two weeks"}
    %{
      id: event.id,
      image: event.image,
      type: event.type,
      date: event.date,

      from_time: event.from_time,
      end_time: event.end_time,
      day: day[event.day],
      repeat_every_week: repeat[event.repeat_every_week],

      city: event.city,
      description: event.description,

      place: event.place,
      address: event.address
    }
  end
end
