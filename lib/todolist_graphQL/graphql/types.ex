defmodule TodolistGraphQL.Graphql.Types do
  use Absinthe.Schema.Notation

  alias TodolistGraphQL.Graphql.Types

  import_types(Types.Task)
end
