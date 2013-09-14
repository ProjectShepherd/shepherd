json.array!(@missing_people) do |missing_person|
  json.extract! missing_person, :found, :status, :first_name, :middle_name, :last_name, :age, :height, :weight, :sex, :hair_color, :eye_color, :race, :description, :initial_location_lat, :initial_location_long, :found_location_lat, :found_location_long, :submitter_id
  json.url missing_person_url(missing_person, format: :json)
end
