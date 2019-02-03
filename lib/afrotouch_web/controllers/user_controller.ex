defmodule AfrotouchWeb.UserController do
  use AfrotouchWeb, :controller

  alias Afrotouch.{Repo, Accounts.User}

  def index(conn, _params) do
    users = Repo.all(User)
    IO.inspect users
    render conn, "index.html", users: users
  end
end
