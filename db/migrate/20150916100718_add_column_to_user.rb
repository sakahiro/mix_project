class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :history, :integer, after: :avatar
  end
end
