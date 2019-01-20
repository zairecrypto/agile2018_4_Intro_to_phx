defmodule AfrotouchWeb.PageController do
  use AfrotouchWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
