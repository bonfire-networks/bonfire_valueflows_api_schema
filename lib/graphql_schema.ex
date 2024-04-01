# SPDX-License-Identifier: AGPL-3.0-only
if Application.compile_env(:bonfire_api_graphql, :modularity) != :disabled and
     Code.ensure_loaded?(Absinthe.Schema.Notation) do
  defmodule Bonfire.ValueFlows.API.Schema.Observe do
    use Absinthe.Schema.Notation

    @schema_file "lib/observe.gql"

    @external_resource @schema_file

    import_sdl(path: @schema_file)
  end
end
