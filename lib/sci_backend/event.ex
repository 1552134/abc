defmodule SciBackend.Event do
  use Ecto.Schema
  import Ecto.Changeset

  schema "event" do
    field :name, :string
    field :nr_slot, :integer
    field :status, :string

    field :image, :string
    field :address, :string
    field :city, :string
    field :date, :utc_datetime
    field :day, :integer
    field :description, :string
    field :end_time, :string
    field :from_time, :string
    field :information, :string
    field :place, :string
    field :time_zone, :string

    field :type, :string
    field :repeat_every_week, :integer
    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:image, :city, :description, :day, :date, :from_time, :end_time, :time_zone, :place, :address, :information, :type, :repeat_every_week])
    |> validate_required([:image, :city, :description, :day, :date, :from_time, :end_time, :time_zone, :place, :address, :information, :type, :repeat_every_week])
  end
end
