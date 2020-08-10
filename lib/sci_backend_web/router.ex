defmodule SciBackendWeb.Router do
  use SciBackendWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
    plug(Plug.RequestId)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", SciBackendWeb do
    pipe_through(:browser)

    get("/healthz", HelloController, :index)
  end

  scope "/events", SciBackendWeb do
    pipe_through(:browser)

    resources("/", EventController, only: [:index])
  end

  scope "/bookings", SciBackendWeb do
    pipe_through(:api)

    resources("/", BookingController, only: [:index])
  end

  scope "/api", SciBackendWeb do
    pipe_through(:api)

    get("/event/", EventController, :index)
    get("/event/type", EventController, :type)
    get("/event/:id", EventController, :show)

    post("/users/signup", UserController, :create)
    post("/users/signin", UserController, :signin)
  end

  # Other scopes may use custom stacks.
  # scope "/api", SciBackendWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through(:browser)
      live_dashboard("/dashboard", metrics: SciBackendWeb.Telemetry)
    end
  end
end
