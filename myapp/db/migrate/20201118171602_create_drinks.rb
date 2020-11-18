class CreateDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.integer :price
      t.string :instructions
      t.string :ingreadents

      t.timestamps
    end
  end
end
