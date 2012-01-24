class CreateBottlechanges < ActiveRecord::Migration
  def change
    create_table :bottlechanges do |t|
      t.text :comment
      t.references :drinker
      t.integer :addremove

      t.timestamps
    end
    add_index :bottlechanges, :drinker_id
  end
end
