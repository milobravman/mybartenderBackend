class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.integer :num_people
      t.integer :table_id

      t.timestamps
    end
  end
end
