Inventory.delete_all
Location.delete_all

locations = []
(1..10).each do
  locations << Location.create(
      {
          street: Faker::Address.street_address,
          city: Faker::Address.city,
          region: Faker::Address.state,
          country: Faker::Address.country,
          region_code: Faker::Address.zip_code
      }
  )
end


(1..500).each do
  Inventory.create(
      {
          name: Faker::Commerce.product_name,
          description: Faker::Lorem.paragraph,
          value: Faker::Commerce.price,
          used: [true, false].sample,
          stored: [true, false].sample,
          location_id: locations[rand(0..9)].id
      }
  )
end