class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :street
      t.string :city
      t.string :region
      t.string :country
      t.string :region_code

      t.timestamps null: false
    end
  end
end
