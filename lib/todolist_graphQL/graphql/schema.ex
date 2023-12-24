defmodule TodolistGraphQL.Graphql.Schema do
  use Absinthe.Schema
  alias TodolistGraphQL.Graphql

  import_types(Graphql.Types)
  import_types(Graphql.Queries)

  query do
   import_fields(:task_queries)
  end

end
