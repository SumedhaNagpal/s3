class CreatePhaseOneHalves < ActiveRecord::Migration
  def change
    create_table :phase_one_halves do |t|
      t.references :container, index: true, foreign_key: true
      t.boolean :one
      t.boolean :two
      t.boolean :three
      t.boolean :four
      t.boolean :five
      t.boolean :six

      t.timestamps null: false
    end
  end
end
