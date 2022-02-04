class CreateReceipts < ActiveRecord::Migration[6.1]
  def change
    create_table :receipts do |t|
      t.integer :store_id
      t.integer :category_id
      t.float :total_price
      t.integer :user_id

      t.timestamps
    end
  end
end
