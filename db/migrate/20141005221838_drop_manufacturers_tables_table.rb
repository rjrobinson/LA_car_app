class DropManufacturersTablesTable < ActiveRecord::Migration
  def change
    drop_table :manufacturers_tables
  end
end
