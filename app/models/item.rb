class Item < ApplicationRecord
  belongs_to :plate
  belongs_to :order
end
