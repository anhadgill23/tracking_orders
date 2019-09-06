class CoffeeShop < ApplicationRecord
  belongs_to :barista
  has_many :orders

  validates_presence_of :address
end
