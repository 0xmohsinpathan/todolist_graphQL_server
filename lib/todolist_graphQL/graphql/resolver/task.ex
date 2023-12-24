defmodule TodolistGraphQL.Graphql.Resolver.Task do


  # fake date
  @fake_data %{
    "1" => %{id: 1, task: "Buy milk", complete: true},
    "2" => %{id: 2, task: "Buy bread", complete: false},
    "3" => %{id: 3, task: "Buy cheese", complete: false},
    "4" => %{id: 4, task: "Buy meat", complete: false}
  }

  @list_fake_data [
    %{id: 1, task: "Buy milk", complete: true},
    %{id: 2, task: "Buy bread", complete: false},
    %{id: 3, task: "Buy cheese", complete: false},
    %{id: 4, task: "Buy meat", complete: false}
 ]

  def all_task(_, %{limit: limit}, _) do
   {:ok, Enum.take(@list_fake_data, limit)}
  end

  def get_task!(%{id: id}, _) do
    {:ok, @fake_data[id]}
  end
end
