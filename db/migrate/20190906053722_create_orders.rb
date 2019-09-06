class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :item
      t.references :customer, foreign_key: true
      t.datetime :pickup_time
      t.references :coffee_shop, foreign_key: true

      t.timestamps
    end
  end
end
