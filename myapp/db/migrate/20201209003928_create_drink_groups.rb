class CreateDrinkGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :drink_groups do |t|
      t.references :group, null: false, foreign_key: true
      t.references :drink, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
