# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :chuck_app, ChuckAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kTYzO9bXQhqy2sN6TfA3nt5xUkKOBdBAVuW0/wIqcyj519/j3rr8/2PBexdZ3ipD",
  render_errors: [view: ChuckAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ChuckApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

config :chuck_norris, interval: :timer.minutes(1)

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
