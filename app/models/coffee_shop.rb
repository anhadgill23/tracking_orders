class CoffeeShop < ApplicationRecord
  belongs_to :barista
  has_many :orders
end
