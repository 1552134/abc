{application,sci_backend,
             [{applications,[kernel,stdlib,elixir,logger,runtime_tools,
                             gettext,telemetry_metrics,telemetry_poller,jason,
                             bcrypt_elixir,comeonin,postgrex,ecto_sql,
                             scrivener_ecto,phoenix_html,plug_cowboy,phoenix,
                             phoenix_live_reload,phoenix_live_dashboard,
                             guardian,phoenix_ecto]},
              {description,"sci_backend"},
              {modules,['Elixir.SciBackend','Elixir.SciBackend.Application',
                        'Elixir.SciBackend.Booking',
                        'Elixir.SciBackend.BookingCreator',
                        'Elixir.SciBackend.Event',
                        'Elixir.SciBackend.EventCreator',
                        'Elixir.SciBackend.EventFetcher',
                        'Elixir.SciBackend.Paginate',
                        'Elixir.SciBackend.Paginate.Meta',
                        'Elixir.SciBackend.Repo','Elixir.SciBackend.User',
                        'Elixir.SciBackend.UserCreator',
                        'Elixir.SciBackendWeb',
                        'Elixir.SciBackendWeb.BookingController',
                        'Elixir.SciBackendWeb.BookingView',
                        'Elixir.SciBackendWeb.Endpoint',
                        'Elixir.SciBackendWeb.ErrorHelpers',
                        'Elixir.SciBackendWeb.ErrorView',
                        'Elixir.SciBackendWeb.EventController',
                        'Elixir.SciBackendWeb.EventView',
                        'Elixir.SciBackendWeb.FallbackController',
                        'Elixir.SciBackendWeb.Gettext',
                        'Elixir.SciBackendWeb.Guardian',
                        'Elixir.SciBackendWeb.Guardian.Plug',
                        'Elixir.SciBackendWeb.HelloController',
                        'Elixir.SciBackendWeb.HelloView',
                        'Elixir.SciBackendWeb.LayoutView',
                        'Elixir.SciBackendWeb.MetaView',
                        'Elixir.SciBackendWeb.PageController',
                        'Elixir.SciBackendWeb.PageView',
                        'Elixir.SciBackendWeb.Router',
                        'Elixir.SciBackendWeb.Router.Helpers',
                        'Elixir.SciBackendWeb.Telemetry',
                        'Elixir.SciBackendWeb.UserController',
                        'Elixir.SciBackendWeb.UserSocket',
                        'Elixir.SciBackendWeb.UserView']},
              {registered,[]},
              {vsn,"0.1.0"},
              {mod,{'Elixir.SciBackend.Application',[]}}]}.