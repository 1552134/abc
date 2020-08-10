# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :sci_backend,
  ecto_repos: [SciBackend.Repo]

# Configures the endpoint
config :sci_backend, SciBackendWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RX9iqNyc/XDvPDtBxlCMl3NfDfRff1diDq5/a40N0VAAeih8YtR8LYt3+i2kk1YI",
  render_errors: [view: SciBackendWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: SciBackend.PubSub,
  live_view: [signing_salt: "pV7WtZ7G"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]
  
config :sci_backend, SciBackendWeb.Guardian,
  issuer: "sci_backend",
  secret_key: "2Yny6dS03a5T1DDP8boU8yAPpr66nI9q3F6OeK23J0Cf3BsEjTGrXE7XYofxE7/S"
# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
