class CreateElephants < ActiveRecord::Migration[5.1]
  def change
    create_table :elephants do |t|
      t.string :name
      t.integer :age
      t.integer :height
      t.timestamps
    end
  end
end
