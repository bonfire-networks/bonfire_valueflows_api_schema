# SPDX-License-Identifier: AGPL-3.0-only
if Code.ensure_loaded?(Bonfire.API.GraphQL) do
defmodule Bonfire.ValueFlows.API.Schema.Observe do
  use Absinthe.Schema.Notation

  @schema_file "lib/observe.gql"

  @external_resource @schema_file

  import_sdl(path: @schema_file)

end
end
