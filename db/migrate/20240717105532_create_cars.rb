class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :make,             null: false
      t.string :model,            null: false
      t.string :body_type,        null: false
      t.string :mileage,          null: false
      t.string :color,            null: false
      t.string :price,            null: false
      t.string :fuel,             null: false
      t.string :year,             null: false
      t.string :engine_volume,    null: false
      t.string :transmission,     null: false
      t.integer :status_id
      t.json :photos              # null: false
 
      t.timestamps
    end
  end
end