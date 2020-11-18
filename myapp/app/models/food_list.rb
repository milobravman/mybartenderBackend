class FoodList < ApplicationRecord
  belongs_to :food
  belongs_to :group
end
