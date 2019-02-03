# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Afrotouch.Repo.insert!(%Afrotouch.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Afrotouch.{Repo, Accounts.User}

[
    %{name: "Teddy", username: "mabu", password: "elixir1"}, 
    %{name: "Regina", username: "ngan", password: "elixir2"}
    # %{name: "Dwayne", username: "kama", password: "elixir3"}, 
    # %{name: "Megane", username: "kaly", password: "elixir4"}, 
    # %{name: "Nolan", username: "mase", password: "elixir5"}
]
|> Enum.map(fn user_date -> User.changeset(%User{}, user_date) end)
|> Enum.each(fn changeset -> Repo.insert!(changeset) end)