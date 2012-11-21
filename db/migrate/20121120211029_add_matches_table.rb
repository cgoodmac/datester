class AddMatchesTable < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.boolean :matched
      t.integer :receiver_id
      t.integer :sender_id
      t.timestamps
    end
  end
end
