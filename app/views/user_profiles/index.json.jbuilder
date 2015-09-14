json.array!(@users) do |user|
  json.extract! user, :id, :title, :explanation, :image, :wanted, :doing, :done
  json.url user_profile_url(user, format: :json)
end
