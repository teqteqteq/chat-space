class AddNameToGroups < ActiveRecord::Migration[5.0]
  def change
    remove_index :groups, :name
    change_column_null :groups, :name, false
  end
end
