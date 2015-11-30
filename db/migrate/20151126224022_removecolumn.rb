class Removecolumn < ActiveRecord::Migration
  def change
  	remove_column :users, :access
  	add_column :users, :access, :integer,default: 3
  end
end
