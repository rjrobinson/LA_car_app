class AddColumnToCarsTable < ActiveRecord::Migration
  def up
    add_column :cars, :model, :string
  end

  def down
    remove_column :cars, :model, :string
  end

end
