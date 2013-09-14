json.array!(@photos) do |photo|
  json.extract! photo, :missing_person_id
  json.mobile photo.mobile
  json.web photo.web
  json.thumb photo.thumb
end
