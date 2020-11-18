class Group < ApplicationRecord
    belongs_to :table
    has_many :drinks, through: :drink_group
    has_many :foods, through: :food_group
end
