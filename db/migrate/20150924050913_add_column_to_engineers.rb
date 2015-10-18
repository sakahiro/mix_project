class AddColumnToEngineers < ActiveRecord::Migration
  def change
    add_column :engineers, :history, :string, null: false, after: :id
    add_column :engineers, :product1, :string, after: :product
    add_column :engineers, :product2, :string, after: :product1
  end
end
