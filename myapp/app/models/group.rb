class Group < ApplicationRecord
    # belongs_to :table, optional: true To open the door to have a record of all the groups.
    # This way when I PATCH the tableID to nil it should not break the model 
    belongs_to :table, optional: true

    #Has many drinks_groups and it has many drinks (Through drink groups). The Drink_group represents one joining of a group_id and a drink_id while a drink is a menu object.
    has_many :drink_groups, dependent: :destroy
    has_many :drinks, through: :drink_groups

    # Same idea with Food here if Sam's group has a pizza that is recoured as a food_group. 
    # It is possible that the way these tables are set up the has_many :foods is not nessisary. 
    has_many :food_groups, dependent: :destroy
    has_many :foods, through: :food_groups
end
