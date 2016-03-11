defmodule Harvest.Mixfile do
  use Mix.Project

  def project do
    [app: :harvest,
     version: "0.0.3",
     elixir: "~> 1.2",
     description: "Harvest Time Tracking API wrapper written in Elixir",
     package: package,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:httpoison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [{:httpoison, "~> 0.8"},
     {:poison,    "~> 2.1"},
     {:exvcr,     "~> 0.7", only: :test},
     {:earmark,   "~> 0.2",   only: :docs},
     {:ex_doc,    "~> 0.11",  only: :docs},
     {:inch_ex,   "~> 0.5",   only: :docs}]
  end

  defp package do
    [maintainers:  ["luishurtado"],
     licenses:     ["MIT"],
     links:        %{"GitHub" => "https://github.com/luishurtado/harvest"} ]
  end
end
