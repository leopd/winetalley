class CreateDrinkers < ActiveRecord::Migration
  def change
    create_table :drinkers do |t|
      t.string :name
      t.integer :talley

      t.timestamps
    end
  end
end
