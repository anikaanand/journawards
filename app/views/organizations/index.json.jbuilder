json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :link
  json.url organization_url(organization, format: :json)
end
