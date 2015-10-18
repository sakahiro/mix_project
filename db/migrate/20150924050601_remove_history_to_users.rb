class RemoveHistoryToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :history, :string
  end
end
