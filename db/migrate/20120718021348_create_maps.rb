class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :description
      t.float :latitude
      t.float :longitude
      t.datetime :date

      t.timestamps
    end
  end
end
