defmodule PhoenixTailwindTemplate.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_tailwind_template,
    adapter: Ecto.Adapters.Postgres
end
