json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :name, :description, :value, :used, :stored, :location_id
  json.url inventory_url(inventory, format: :json)
end
