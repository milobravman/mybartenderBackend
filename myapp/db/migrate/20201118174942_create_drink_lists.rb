class CreateDrinkLists < ActiveRecord::Migration[6.0]
  def change
    create_table :drink_lists do |t|
      t.references :drink, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
