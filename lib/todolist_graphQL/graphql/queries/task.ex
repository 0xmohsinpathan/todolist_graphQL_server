defmodule TodolistGraphQL.Graphql.Queries.Task do
  use Absinthe.Schema.Notation

  alias TodolistGraphQL.Graphql.Resolver


  object :task_queries do
    field :get_task, :task do
      arg :id, non_null(:id)
      resolve(&Resolver.Task.get_task!/2)
    end

    field :list_task, list_of(:task) do
      arg :limit, :integer
      resolve(&Resolver.Task.all_task/3)
    end
  end
end
