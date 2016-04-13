json.array!(@pages) do |event|
  json.extract! event, :id, :title, :description
  json.start event.start_time
  json.end event.end_time
end
