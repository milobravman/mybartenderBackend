class DrinkList < ApplicationRecord
  belongs_to :drink
  belongs_to :group
end
