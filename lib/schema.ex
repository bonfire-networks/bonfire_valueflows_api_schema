# SPDX-License-Identifier: AGPL-3.0-only
if Application.compile_env(:bonfire_api_graphql, :modularity) != :disabled do
  defmodule Bonfire.ValueFlows.API.Schema do
    use Absinthe.Schema.Notation
    import Untangle

    @schema_file "lib/schema.gql"
    @external_resource @schema_file

    # import_types(Absinthe.Type.Custom)

    import_sdl(path: @schema_file)
  end
end
