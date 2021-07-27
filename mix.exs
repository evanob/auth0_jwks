defmodule Auth0Jwks.MixProject do
  use Mix.Project

  def project do
    [
      app: :auth0_jwks,
      name: "Auth0 JWKs",
      description: "🔌 An Auth0 plug for Elixir meant to help you decode and user Auth0 JWKs",
      version: "0.4.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      source_url: "https://github.com/evanob/auth0_jwks",
      homepage_url: "https://github.com/evanob/auth0_jwks",
      package: [
        maintainers: ["Evan O'Brien"],
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/evanob/auth0_jwks"}
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.23", only: :dev, runtime: false},
      {:httpoison, "~> 1.6"},
      {:joken, "~> 2.0"},
      {:joken_jwks, "~> 1.1.0"},
      {:plug_cowboy, "~> 2.0"},
      {:poison, "~> 4.0", optional: true}
    ]
  end
end
