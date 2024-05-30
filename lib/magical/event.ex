defmodule Magical.Event do
  @moduledoc """
  A representation of a iCalendar VEVENT
  """

  defstruct uid: nil,
            dtstamp: nil,
            summary: nil,
            description: nil,
            location: nil,
            dtstart: nil,
            dtend: nil,
            class: nil,
            created: nil,
            geo: nil,
            last_modified: nil,
            organizer: nil,
            priority: nil,
            seq: nil,
            status: nil,
            transp: nil,
            url: nil,
            recurid: nil,
            rrule: nil,
            attach: nil,
            attendee: nil,
            categories: nil,
            comment: nil,
            contact: nil,
            exdate: nil,
            rstatus: nil,
            related: nil,
            resources: nil,
            rdate: nil

  @type t :: %__MODULE__{
          uid: String.t(),
          dtstamp: DateTime.t(),
          dtstart: DateTime.t() | Date.t(),
          dtend: DateTime.t() | Date.t(),
          summary: String.t(),
          description: String.t(),
          location: String.t(),
          class: String.t(),
          created: DateTime.t(),
          geo: String.t(),
          last_modified: DateTime.t(),
          organizer: String.t(),
          priority: String.t(),
          seq: String.t(),
          status: String.t(),
          transp: String.t(),
          url: String.t(),
          recurid: String.t(),
          rrule: String.t(),
          attach: String.t(),
          attendee: String.t(),
          categories: String.t(),
          comment: String.t(),
          contact: String.t(),
          exdate: String.t(),
          rstatus: String.t(),
          related: String.t(),
          resources: String.t(),
          rdate: String.t()
        }
end
