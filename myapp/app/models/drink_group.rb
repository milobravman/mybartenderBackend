class DrinkGroup < ApplicationRecord
  belongs_to :group
  belongs_to :drink
end
