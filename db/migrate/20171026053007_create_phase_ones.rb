class CreatePhaseOnes < ActiveRecord::Migration
  def change
    create_table :phase_ones do |t|
      t.references :container, index: true, foreign_key: true
      t.integer :temperature
      t.datetime :time_in
      t.datetime :time_out

      t.timestamps null: false
    end
  end
end
