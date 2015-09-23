class RemoveColumnToEngineer < ActiveRecord::Migration
  def change
    remove_column :engineers, :history, :integer
  end
end
