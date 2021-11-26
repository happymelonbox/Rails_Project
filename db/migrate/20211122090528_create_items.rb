class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.integer :category_id
      t.integer :store_id
      t.integer :receipt_id

      t.timestamps
    end
    add_index :items, :category_id
    add_index :items, :store_id
    add_index :items, :receipt_id
  end
end
