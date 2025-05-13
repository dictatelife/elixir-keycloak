defmodule Keycloak.Mixfile do
  use Mix.Project

  def project do
    [
      app: :keycloak,
      version: "1.1.1",
      elixir: "~> 1.6",
      name: "keycloak",
      description: "Library for interacting with a Keycloak authorization server",
      package: package(),
      deps: deps(),
      docs: [extras: ["README.md"], main: "readme"],
      source_url: "https://github.com/dictatelife/elixir-keycloak"
    ]
  end

  # Configuration for the OTP application
  def application do
    [extra_applications: [:logger, :oauth2]]
  end

  defp deps do
    [
      {:joken, "~> 2.0"},
      {:oauth2, "~> 2.0"},
      {:plug, "~> 1.4"},
      {:poison, "~> 4.0"},
      {:credo, "~> 1.4", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.26", only: :dev, runtime: false},
      {:rexbug, "~> 1.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      maintainers: ["Dictate.life"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/dictatelife/elixir-keycloak"}
    ]
  end
end
