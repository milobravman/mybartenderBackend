class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :tables do |t|
      t.integer :seats
      t.integer :position

      t.timestamps
    end
  end
end
