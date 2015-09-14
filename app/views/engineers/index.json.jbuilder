json.array!(@engineers) do |engineer|
  json.extract! engineer, :id, :title, :explanation, :image, :wanted, :doing, :done
  json.url engineer_url(engineer, format: :json)
end
