class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.integer :phase
      t.string :status

      t.timestamps null: false
    end
  end
end
