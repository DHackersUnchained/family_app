json.array!(@contacts) do |contact|
  json.extract! contact, :id, :facebook, :twitter, :linkedin, :phone, :address, :email, :birthday, :hometown, :user_id
  json.url contact_url(contact, format: :json)
end
