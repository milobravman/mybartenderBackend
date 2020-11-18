class CreateFoodGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :food_groups do |t|
      t.references :food, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
