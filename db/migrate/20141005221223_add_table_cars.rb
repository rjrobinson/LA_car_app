class AddTableCars < ActiveRecord::Migration

  def change
    create_table :cars do |t|
      t.string :manufacturer, null: false
      t.string :color
      t.integer :year, null: false
      t.integer :milage
      t.text :description

      t.timestamps
    end
  end
end
