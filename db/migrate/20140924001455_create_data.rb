class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.string :original
      t.string :compressed, index: true
      t.integer :count, default: 1

      t.timestamps
    end
  end
end
