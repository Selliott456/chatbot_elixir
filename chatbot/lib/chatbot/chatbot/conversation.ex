defmodule Chatbot.Chatbot.Conversation do
  use Ecto.Schema
  import Ecto.Changeset

  schema "chatbot_conversations" do
    field :resovled_at, :naive_datetime

    has_many :messages, Tutorial.Chatbot.Message, preload_order: [desc: :inserted_at]

    timestamps()
  end

  @doc false
  def changeset(conversation, attrs) do
    conversation
    |> cast(attrs, [:resolved_at])
  end
end
