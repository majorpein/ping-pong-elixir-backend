defmodule PingPongElixirWeb.UserView do
  use PingPongElixirWeb, :view
  alias PingPongElixirWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      login: user.login,
      is_active: user.is_active}
  end

  def render("sign_in.json", %{user: user}) do
    %{
      data: %{
        user: %{
          id: user.id,
          login: user.login
        }
      }
    }
  end
end
