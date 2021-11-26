class CreateUser < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :first_name
      t.string :last_name
      t.text :email_address
      t.string :password_digest

      t.timestamps
    end
  end
end
