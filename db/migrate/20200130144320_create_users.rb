class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :username
      t.string :address
      t.string :email
      t.string :phone_number
      t.string :img_url
      t.string :specialty
      t.boolean :board_certified
     
      t.timestamps
    end
  end
end
