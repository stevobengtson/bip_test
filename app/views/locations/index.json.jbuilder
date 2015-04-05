json.array!(@locations) do |location|
  json.extract! location, :id, :street, :city, :region, :country, :region_code
  json.url location_url(location, format: :json)
end
