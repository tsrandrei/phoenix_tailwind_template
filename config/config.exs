# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_tailwind_template,
  ecto_repos: [PhoenixTailwindTemplate.Repo]

# Configures the endpoint
config :phoenix_tailwind_template, PhoenixTailwindTemplateWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gZejHXeRLdecBBSa/sorBTiZZRm2qnWR9d7J+DN50/4zRFHgdQprlWV973dSVfHQ",
  render_errors: [view: PhoenixTailwindTemplateWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixTailwindTemplate.PubSub,
  live_view: [signing_salt: "KRvb5qhm"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
