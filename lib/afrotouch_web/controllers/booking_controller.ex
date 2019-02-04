defmodule AfrotouchWeb.BookingAPIController do
  use AfrotouchWeb, :controller

  alias Afrotouch.{Repo, Accounts.User, API.Booking}

  # def index(conn, _params) do
  #   users = Repo.all(User)
  #   IO.inspect users
  #   render conn, "index.html", users: users
  # end

  def create(conn, _params) do
    available_taxis = Repo.all(from t in Taxi, where: t.status == "available", select: t)
    if length(available_taxis) > 0 do
      taxi = List.first(available_taxis)
      put_status(conn, 201)
      |> json(%{msg: "Your taxi will arrive in 5 mins", taxi_location: taxi.location <>", Tartu, Estonia"})
    else
      put_status(conn, 409)
      |> json(%{msg: "Booking request cannot be served"})
    end
  end
end
