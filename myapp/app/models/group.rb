class Group < ApplicationRecord
    belongs_to :table, optional: true

    has_many :drink_groups, dependent: :destroy
    has_many :drinks, through: :drink_groups

    has_many :food_groups, dependent: :destroy
    has_many :foods, through: :food_groups
end
