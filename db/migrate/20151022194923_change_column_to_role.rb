class ChangeColumnToRole < ActiveRecord::Migration
  def change
    add_index :roles, [:user_id, :project_id], unique: true
  end
end
