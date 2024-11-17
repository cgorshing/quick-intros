defmodule QuickIntrosWeb.TrialRunController do
  use QuickIntrosWeb, :controller

  # alias QuickIntros.Accounts

  def display(conn, _params) do
    changeset = QuickIntros.TrialRun.foo_changeset(%QuickIntros.TrialRun{}, %{})
    render(conn, :display, changeset: changeset)
  end

  def new(conn, _params) do
    changeset = QuickIntros.TrialRun.foo_changeset(%QuickIntros.TrialRun{}, %{})
    render(conn, :new, changeset: changeset)
  end

  def create(conn, %{"trial_run" => %{"name" => name, "title" => title}}) do
    # if user = Accounts.get_user_by_email(email) do
    #   Accounts.deliver_user_reset_password_instructions(
    #     user,
    #     &url(~p"/users/reset_password/#{&1}")
    #   )
    # end


    conn
    |> put_flash(
      :info,
      "If your email is in our system, you will receive instructions to reset your password shortly." <> name <> title
    )
    |> redirect(to: ~p"/trial-run")
  end
end
