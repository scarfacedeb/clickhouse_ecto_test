# ClickhouseEctoTest

App to test changes to clickhouse_ecto.

## Setup

```
docker-compose up -d 

mix deps.get
mix do ecto.create, ecto.migrate
```

## Profiling

Switch clickhouse_ecto package in `mix.exs` and run:

```
mix profile.fprof -e 'ClickhouseEctoTest.test_insert' --callers=true --no-warmup --sort=own | less
```
