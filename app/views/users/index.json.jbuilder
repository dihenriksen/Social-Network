json.array!(@users) do |user|
  json.extract! user, :name_first, :name_last, :email, :salt, :fish, :code, :expires_at, :born_on, :friends, :family, :pictures
  json.url user_url(user, format: :json)
end
