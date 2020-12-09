class FoodGroup < ApplicationRecord
  belongs_to :group
  belongs_to :food
end
