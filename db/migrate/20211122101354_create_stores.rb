class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :unit_or_building
      t.string :street_number
      t.string :street_name
      t.string :suburb
      t.integer :postcode
      t.string :city

      t.timestamps
    end
  end
end
