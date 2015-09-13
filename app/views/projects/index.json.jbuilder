json.array!(@projects) do |project|
  json.extract! project, :id, :title, :explanation, :image, :wanted, :doing, :done
  json.url project_url(project, format: :json)
end
