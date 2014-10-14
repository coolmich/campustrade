class CreateRentrecords < ActiveRecord::Migration
  def change
    create_table :rentrecords do |t|
      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end
