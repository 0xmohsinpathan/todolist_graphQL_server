defmodule TodolistGraphQL.Graphql.Types.Task do
  use Absinthe.Schema.Notation

  object :task do
    field :id, :integer
    field :task, :string
    field :complete, :boolean

  end
end
