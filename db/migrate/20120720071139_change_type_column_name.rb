class ChangeTypeColumnName < ActiveRecord::Migration
  def change
    remove_column :names, :type
    add_column :names, :position, :string
  end
end
