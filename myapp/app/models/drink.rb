class Drink < ApplicationRecord
    has_many :drink_groups
    has_many :groups, through: :drink_group
end
