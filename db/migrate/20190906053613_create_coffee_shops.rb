class CreateCoffeeShops < ActiveRecord::Migration[5.2]
  def change
    create_table :coffee_shops do |t|
      t.string :address
      t.references :barista, foreign_key: true

      t.timestamps
    end
  end
end
