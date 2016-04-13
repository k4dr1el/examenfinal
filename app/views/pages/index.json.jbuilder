

json.array!(@page) do |event|
  json.extract! event, :id, :title, :description
  json.start event.start_time
  json.end event.end_time
  json.url event_url(event, format: :html)
end

$('#calendar').fullCalendar(
    events: '/events.json'
);