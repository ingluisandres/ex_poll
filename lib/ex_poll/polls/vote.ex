defmodule ExPoll.Polls.Vote do
  use Ecto.Schema
  import Ecto.Changeset
  alias ExPoll.Polls.Option

  schema "votes" do

    belongs_to(:option, Option)
    timestamps()
  end

  @doc false
  def changeset(vote, attrs) do
    vote
    |> cast(attrs, [])
    |> validate_required([])
    |> assoc_constraint(:option)
  end
end
