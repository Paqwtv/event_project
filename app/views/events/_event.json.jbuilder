json.extract! event, :id, :author, :title, :description, :date_time, :geotag, :acsess_level, :created_at, :updated_at
json.url event_url(event, format: :json)
