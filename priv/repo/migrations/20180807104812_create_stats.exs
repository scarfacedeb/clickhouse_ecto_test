defmodule ClickhouseEctoTest.Repo.Migrations.CreateStats do
  use Ecto.Migration

  def change do
    create table(:stats, engine: "MergeTree(ts_date, (user_id, ip, ts), 8192)") do
      add(:ts_date, :date, null: false)
      add(:ts, :utc_datetime, null: false)
      add(:user_id, :integer, null: false)
      add(:ip, :string, null: false)

      add(:fan, :integer, null: false)
      add(:temp, :integer, null: false)
      add(:temp2, :integer, null: false)
    end
  end
end
