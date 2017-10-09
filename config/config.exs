# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :todobackend,
  ecto_repos: [Todobackend.Repo]

# Configures the endpoint
config :todobackend, TodobackendWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RmmW05fCWk/hYsCaRSF/SRaO5tXm63ljFlw7o3jKRU5WeCEe6zq19x8AQEJ6t02g",
  render_errors: [view: TodobackendWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Todobackend.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
