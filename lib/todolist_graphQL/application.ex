defmodule TodolistGraphQL.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      TodolistGraphQL.Repo,
      # Start the Telemetry supervisor
      TodolistGraphQLWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: TodolistGraphQL.PubSub},
      # Start the Endpoint (http/https)
      TodolistGraphQLWeb.Endpoint
      # Start a worker by calling: TodolistGraphQL.Worker.start_link(arg)
      # {TodolistGraphQL.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TodolistGraphQL.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TodolistGraphQLWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
