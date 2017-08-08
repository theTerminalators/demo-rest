class CreatePlants < ActiveRecord::Migration[5.1]
  def change
    create_table :plants do |t|
      t.integer :height
      t.string :color
      t.integer :age
      t.string :name

      t.timestamps
    end
  end
end
