class RenameColumnToRole < ActiveRecord::Migration
  def change
  	rename_column :roles, :product_id, :project_id
  end
end
