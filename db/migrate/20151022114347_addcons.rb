class Addcons < ActiveRecord::Migration
  def change
  	add_column :offers,:otdel_id,:integer
  	add_column :offers,:user_id,:integer
  	add_column :offers,:organisations_id,:integer
  	add_index :offers,:otdel_id
  	add_index :offers,:user_id
  	add_index :offers,:organisations_id
  end
end
