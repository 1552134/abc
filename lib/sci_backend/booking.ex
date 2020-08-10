defmodule SciBackend.Booking do
  use Ecto.Schema
  import Ecto.Changeset
  alias SciBackend.{Event, User}

  schema "booking" do
    field(:status, :string)
    field(:is_happened, :boolean)
    belongs_to(:user, User, foreign_key: :user_id, references: :id)
    belongs_to(:event, Event, foreign_key: :event_id, references: :id)
    timestamps()
  end

  @doc false
  def changeset(booking, attrs) do
    booking
    |> cast(attrs, [:status])
    |> validate_required([:status])
  end
end
