defmodule SciBackendWeb.BookingController do
  use SciBackendWeb, :controller
  alias SciBackend.{Repo, Booking, BookingCreator}

  def index(conn, params) do
    {:ok, bookings} = BookingCreator.fetch_future_booking(params)
    render(conn, "index.json", bookings: bookings)
  end
end
