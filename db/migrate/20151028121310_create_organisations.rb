class CreateOrganisations < ActiveRecord::Migration
  def change
  	drop_table :organisations
    create_table :organisations do |t|

      t.timestamps
    end
  end
end
