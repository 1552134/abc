defmodule SciBackendWeb.BookingView do
  use SciBackendWeb, :view
  alias SciBackendWeb.BookingView
  alias SciBackendWeb.MetaView

  @moduledoc """
  Conveniences for render event json data.
  """

  @doc """
  Render list events, include meta data from pagination.
  """
  def render("index.json", %{bookings: bookings}) do
    %{
      data: render_many(bookings.entries, BookingView, "booking.json"),
      meta: render_one(bookings.meta, MetaView, "meta.json")
    }
  end

  def render("booking.json", %{booking: booking}) do
    %{
      id: booking.id,
      event: %{
        city: booking.event.city,
        date: booking.event.date,
        day: booking.event.day,
        description: booking.event.description,
        from_time: booking.event.from_time,
        end_time: booking.event.end_time,
        image: booking.event.image,
        type: booking.event.type,
        repeat_every_week: booking.event.repeat_every_week,
        place: booking.event.place,
        id: booking.event.id
      },
      user: %{
        name: booking.user.name
      }
    }
  end
end
