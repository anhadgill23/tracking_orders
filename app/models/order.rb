class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :coffee_shop

  validates_presence_of :customer, :coffee_shop, :pickup_time
end
