class CreatePhaseTwos < ActiveRecord::Migration
  def change
    create_table :phase_twos do |t|
      t.references :container, index: true, foreign_key: true
      t.integer :temperature
      t.datetime :time

      t.timestamps null: false
    end
  end
end
