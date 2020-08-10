defmodule SciBackend.Repo do
  use Ecto.Repo,
    otp_app: :sci_backend,
    adapter: Ecto.Adapters.Postgres

  use Scrivener, page_size: 10, max_page_size: 300
end
