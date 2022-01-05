class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_no
      t.string :alt_phone_no
      t.string :email
      t.string :alt_email
      t.string :address
      t.string :adhaar_no
      t.string :pan_no
      t.string :bio
      t.string :password
      t.integer :user_type

      t.timestamps
    end
  end
end
