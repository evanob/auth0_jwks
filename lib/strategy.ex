defmodule Auth0Jwks.Strategy do
  use JokenJwks.DefaultStrategyTemplate

  def init_opts(opts) do
    opts
    |> Keyword.merge(Auth0Jwks.Config.jwks_opts())
  end
end
