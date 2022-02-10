class CreateReceipts < ActiveRecord::Migration[6.1]
  def change
    create_table :receipts do |t|
      t.integer :store_id
      t.date :date
      t.time :time
      t.integer :category_id
      t.float :total_price
      t.references :user, index: true, foreign_key: true
      

      t.timestamps
    end
  end
end
