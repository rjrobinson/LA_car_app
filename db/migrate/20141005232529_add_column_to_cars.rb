class AddColumnToCars < ActiveRecord::Migration
  def change
    add_column :cars, :manufacturer_id, :integer, null: false
  end
end
