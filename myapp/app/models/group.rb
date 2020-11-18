class Group < ApplicationRecord
    belongs_to :table
    has_many :drinks, through: :drink_list
    has_many :foods, through: :food_list
end
