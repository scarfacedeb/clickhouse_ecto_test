defmodule ClickhouseEctoTest.MixProject do
  use Mix.Project

  def project do
    [
      app: :clickhouse_ecto_test,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ClickhouseEctoTest.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, "~> 2.2"},
      {:clickhousex, "~> 0.2.2"},
      {:clickhouse_ecto, "~> 0.2.4"},
      # {:clickhouse_ecto, github: "scarfacedeb/clickhouse_ecto", branch: "refactor_params"},
    ]
  end
end
