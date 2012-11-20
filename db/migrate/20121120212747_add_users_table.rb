class AddUsersTable < ActiveRecord::Migration
   def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.integer :photo_id
      t.integer :age
      t.string :gender
      t.string :city
      t.string :state
      t.string :ethnicity
      t.string :description 
      t.timestamps
    end
  end
end
