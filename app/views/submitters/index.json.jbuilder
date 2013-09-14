json.array!(@submitters) do |submitter|
  json.extract! submitter, :first_name, :middle_name, :last_name, :phone_number, :email
  json.url submitter_url(submitter, format: :json)
end
