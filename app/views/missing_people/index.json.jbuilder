json.array!(@missing_people) do |missing_person|
  json.reporter_id missing_person.id
  json.found missing_person.found
  json.status missing_person.status
  json.submission_time missing_person.created_at
  json.first_name missing_person.first_name
  json.middle_name missing_person.middle_name
  json.last_name missing_person.last_name
  json.age missing_person.age
  json.height missing_person.height
  json.weight missing_person.weight
  json.sex missing_person.sex

  if missing_person.photos.first.present?
  	json.thumbnail missing_person.photos.first.photo_attachment.url(:thumb)
  end

  json.pictures missing_person.photos do |photo|
  	json.url photo.photo_attachment.url
  end

  json.hair_color missing_person.hair_color
  json.eye_color missing_person.eye_color
  json.race missing_person.race
  json.description missing_person.description
  json.initial_location do
  	json.lat missing_person.initial_location_lat
  	json.long missing_person.initial_location_long
  end
  json.found_location do
  	json.lat missing_person.found_location_lat
  	json.long missing_person.found_location_long
  end
  if missing_person.submitter.present?
	  json.submitter do
	  	json.first_name missing_person.submitter.first_name
	  	json.middle_name missing_person.submitter.middle_name
	  	json.last_name missing_person.submitter.last_name
	  	json.phone missing_person.submitter.phone_number
	  	json.email missing_person.submitter.email
	  end
  end

end
