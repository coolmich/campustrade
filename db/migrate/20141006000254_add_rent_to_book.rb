class AddRentToBook < ActiveRecord::Migration
  def change
    add_column :books, :rent, :integer, :default=>0
  end
end
