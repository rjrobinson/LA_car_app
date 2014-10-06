class ChangeColumnNameAndType < ActiveRecord::Migration
  def change
    remove_column :cars, :manufacturer
  end
end
