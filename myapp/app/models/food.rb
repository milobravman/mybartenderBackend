class Food < ApplicationRecord

    has_many :food_groups
    has_many :groups, through: :food_groups
  
end
