class RenameColumnToComment < ActiveRecord::Migration
  def change
  	rename_column :comments, :product_id, :project_id
  end
end
