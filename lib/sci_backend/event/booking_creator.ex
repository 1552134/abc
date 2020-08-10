defmodule SciBackend.BookingCreator do
  alias SciBackend.{Booking, Event, User, Repo, Paginate}
  import Ecto.Query

  def fetch_future_booking(params) do
    with {:ok, args} <- Paginate.validation(params),
         paginated_list <-
           from(b in Booking,
             join: e in assoc(b, :event),
             on: e.id == b.event_id,
             join: u in assoc(b, :user),
             on: u.id == b.user_id,
             preload: [event: e, user: u]
           )
           |> Paginate.paginate(args),
         raw_result <- Paginate.cleanup(paginated_list, args),
         result <- Paginate.format(raw_result) do
      {:ok, result}
    end
  end
end
