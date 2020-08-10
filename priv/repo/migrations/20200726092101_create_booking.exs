defmodule SciBackend.Repo.Migrations.CreateBooking do
  use Ecto.Migration

  def change do
    create table(:booking) do
      add(:status, :string)
      add(:is_happened, :boolean)
      add(:user_id, references(:user, on_delete: :nothing))
      add(:event_id, references(:event, on_delete: :nothing))
      timestamps()
    end

    create(index(:booking, [:user_id]))
    create(index(:booking, [:event_id]))
  end
end
