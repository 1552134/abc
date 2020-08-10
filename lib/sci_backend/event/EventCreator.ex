defmodule SciBackend.EventCreator do
  alias SciBackend.{Event, Repo, Paginate}
  import Ecto.Query

  def fetch_events(params) do
    with {:ok, args} <- Paginate.validation(params),
         paginated_list <- Paginate.paginate(Event, args),
         raw_result <- Paginate.cleanup(paginated_list, args),
         result <- Paginate.format(raw_result) do
      {:ok, result}
    else
      {:error, :bad_request, msg} ->
        {:error, :bad_request, msg}
        # ... more error come here
    end
  end

  def fetch_events_type(params) do
    with {:ok, args} <- Paginate.validation(params),
         paginated_list <-
           Event
           |> where([m], m.type == ^params["type"])
           |> Paginate.paginate(args),
         raw_result <- Paginate.cleanup(paginated_list, args),
         result <- Paginate.format(raw_result) do
      {:ok, result}
    else
      {:error, :bad_request, msg} ->
        {:error, :bad_request, msg}
        # ... more error come here
    end
  end
end
