json.array!(@photos) do |photo|
  json.extract! photo, :missing_person_id
  json.url photo_url(photo, format: :json)
end
