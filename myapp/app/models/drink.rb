class Drink < ApplicationRecord
    belongs_to :group, optional: true
end
