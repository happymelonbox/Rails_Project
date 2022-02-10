class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :user_id
      t.references :categorable, polymorphic: true, index:true
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
