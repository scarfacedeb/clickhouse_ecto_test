use Mix.Config

config :clickhouse_ecto_test, ClickhouseEctoTest.Repo,
  adapter: ClickhouseEcto,
  loggers: [Ecto.LogEntry],
  username: "default",
  password: "",
  database: "clickhouse_ecto_test",
  hostname: "localhost",
  port: "8223",
  pool_size: 10

config :clickhouse_ecto_test, ecto_repos: [ClickhouseEctoTest.Repo]
