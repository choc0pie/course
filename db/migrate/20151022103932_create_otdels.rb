class CreateOtdels < ActiveRecord::Migration
  def change
    create_table :otdels do |t|
      t.integer :name

      t.timestamps
    end
  end
end
