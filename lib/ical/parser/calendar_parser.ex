defmodule ICal.Parser.CalendarParser do
  alias ICal.Calendar
  alias ICal.Event
  alias ICal.Parser.EventParser

  def parse_calendar([{"BEGIN", "VEVENT", _} | _] = event, calendar) do
    # child = parse_event(%ICal.Event{}, child)
    child = Enum.reduce(event, %Event{}, &EventParser.parse_event/2)
    %{calendar | events: [child | calendar.events]}
  end

  def parse_calendar([{"BEGIN", _, _} | _] = child, calendar) do
    # child = parse_calendar(%{}, child)
    %{calendar | children: [child | calendar.children]}
  end

  def parse_calendar({"VERSION", version, _}, calendar), do: Map.put(calendar, :version, version)

  def parse_calendar({"PRODID", prodid, _}, calendar), do: Map.put(calendar, :prodid, prodid)

  def parse_calendar(_, calendar), do: calendar
end
