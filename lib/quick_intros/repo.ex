defmodule QuickIntros.Repo do
  use Ecto.Repo,
    otp_app: :quick_intros,
    adapter: Ecto.Adapters.Postgres
end
