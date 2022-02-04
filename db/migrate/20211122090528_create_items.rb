class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.float :tax
      t.references :itemable, polymorphic: true, index: true
      t.integer :user_id

      t.timestamps
    end
  end
end
