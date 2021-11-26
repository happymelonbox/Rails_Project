class CreateReceipts < ActiveRecord::Migration[6.1]
  def change
    create_table :receipts do |t|
      t.integer :store_id
      t.integer :category_id
      t.float :total_price
      t.integer :user_id

      t.timestamps
    end
    add_index :receipts, :store_id
    add_index :receipts, :category_id
    add_index :receipts, :user_id
  end
end
