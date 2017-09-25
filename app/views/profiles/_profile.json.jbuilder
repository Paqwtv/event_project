json.extract! profile, :id, :user_name, :sex, :created_at, :updated_at
json.url profile_url(profile, format: :json)
