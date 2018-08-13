class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.datetime :date
      t.float :latitude
      t.float :longitude
      t.references :elephant, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
