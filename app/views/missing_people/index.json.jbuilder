json.array!(@missing_people) do |missing_person|
  json.extract! missing_person, :first_name, :middle_name, :last_name, :location_long, :location_lat, :description, :status, :found, :notes, :submitter_id
  json.url missing_person_url(missing_person, format: :json)
end
