json.extract! profile, :id, :firstname, :lastname, :middlename, :admin_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
