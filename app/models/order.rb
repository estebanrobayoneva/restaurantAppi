class Order < ApplicationRecord
  has_many :items
  has_many :plates, through: :items
  belongs_to :table

  #order.plates
end
