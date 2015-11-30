class Correct < ActiveRecord::Migration
  def change
  	remove_column :offers,:organisations_id
  	add_column :offers,:organisation_id,:integer
  end
end
