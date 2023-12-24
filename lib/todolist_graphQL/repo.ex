defmodule TodolistGraphQL.Repo do
  use Ecto.Repo,
    otp_app: :todolist_graphQL,
    adapter: Ecto.Adapters.Postgres
end
