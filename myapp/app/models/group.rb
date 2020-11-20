class Group < ApplicationRecord
    belongs_to :table

    has_many :drink_groups
    has_many :drinks, through: :drink_groups

    has_many :food_groups
    has_many :foods, through: :food_groups
end
