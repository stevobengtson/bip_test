class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :name
      t.text :description
      t.float :value
      t.boolean :used
      t.boolean :stored
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
