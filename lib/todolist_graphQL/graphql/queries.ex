defmodule TodolistGraphQL.Graphql.Queries do
  use Absinthe.Schema.Notation
  alias TodolistGraphQL.Graphql.Queries

  import_types(Queries.Task)
end
