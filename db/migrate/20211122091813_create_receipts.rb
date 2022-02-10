class CreateReceipts < ActiveRecord::Migration[6.1]
  def change
    create_table :receipts do |t|
      t.string :name
      t.date :date
      t.time :time
      t.float :total_price
      t.references :user, index: true, foreign_key: true
      t.references :store, index: true, foreign_key: true
      t.references :categorable, polymorphic: true, index:true
      

      t.timestamps
    end
  end
end
