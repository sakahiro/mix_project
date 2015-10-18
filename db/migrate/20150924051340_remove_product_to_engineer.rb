class RemoveProductToEngineer < ActiveRecord::Migration
  def change
    remove_column :engineers, :history, :string
    remove_column :engineers, :product, :string
  end
end
