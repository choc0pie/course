class AddColumns < ActiveRecord::Migration
  def change
    drop_table :mains
  	add_column :users,:fname,:string
  	add_column :users,:lname, :string
  	add_column :users, :oname,:string
  	add_column :users,:to,:string
  	add_column :users, :access, :integer
  	add_column :offers,:offerid,:integer
  	add_column :offers,:to,:integer
  	add_column :offers,:reportdate,:datetime
  	add_column :offers,:obcode,:integer
  	add_column :offers,:reason,:string
  	add_column :offers,:adress,:string
  	add_column :offers,:offertype,:string
  	add_column :offers,:org,:string
  	add_column :offers,:offerstat,:string
  	add_column :offers,:kolpredp,:integer
  	add_column :offers,:kolpredupr,:integer
  	add_column :offers,:kolshtraf,:integer
  	add_column :offers,:summshtraf,:integer

  end
end
