class AddIndex < ActiveRecord::Migration
  def change

  	remove_index :offers,:otdel_id
  	remove_index :offers,:user_id
  	remove_index :offers,:organisations_id
  	add_index :offers,:otdel_id,name: "otdel_id" 
  	add_index :offers,:user_id,name: "user_id" 
  	add_index :offers,:organisations_id,name: "organisations_id" 
  end
end
