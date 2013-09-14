json.array!(@photos) do |photo|
  json.extract! photo, :missing_person_id, :photo_type
  json.url photo_url(photo, format: :json)
end
