class Barista < ApplicationRecord
  has_one :coffee_shop

  validates_presence_of :name
end
