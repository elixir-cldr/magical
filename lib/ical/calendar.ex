defmodule Magical.Calendar do
  defstruct prodid: nil,
            version: nil,
            time_zone: "Etc/UTC",
            name: nil,
            description: nil,
            events: []

  @type t :: %__MODULE__{
          prodid: String.t(),
          name: String.t(),
          description: String.t(),
          time_zone: String.t(),
          events: [Magical.Event.t()]
        }
end
