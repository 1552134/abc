defmodule SciBackend.EventFetcher do
  alias SciBackend.{Event, Repo, Paginate}

  def fetch_events(params) do
    with {:ok, args} <- Paginate.validation(params),
         result <-
           Paginate.paginate(Event, args)
           |> Paginate.cleanup(args)
           |> Paginate.format() do
      {:ok, result}
    else
      {:error, :bad_request, msg} ->
        {:error, :bad_request, msg}
    end
  end
end
