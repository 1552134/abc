defmodule SciBackend.Repo.Migrations.CreateEvent do
  use Ecto.Migration

  def change do
    create table(:event) do
      add :name, :string
      add :nr_slot, :integer
      add :status, :string

      add :image, :string
      add :city, :string
      add :description, :string
      add :day, :integer
      add :date, :utc_datetime
      add :from_time, :string
      add :end_time, :string
      add :time_zone, :string
      add :place, :string
      add :address, :string
      add :information, :string

      add :type, :string
      add :repeat_every_week, :integer
      
      timestamps()
    end

  end
end
