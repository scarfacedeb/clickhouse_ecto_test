defmodule ClickhouseEctoTest do
  import Ecto.Query
  alias ClickhouseEctoTest.{Repo, Stat}

  def test_insert do
    stat = %{
      ts_date: Date.utc_today(),
      ts: DateTime.utc_now(),
      user_id: 1,
      ip: "127.0.0.1",
      fan: Enum.random(1000..5000),
      temp: Enum.random(50..90),
      temp2: Enum.random(40..60)
    }

    stats = Stream.cycle([stat]) |> Enum.take(50)

    Repo.insert_all("stats", stats)
  end
end
