class AddHistoryToEngineers < ActiveRecord::Migration
  def change
    add_column :engineers, :history, :integer, null: false, after: :id
  end
end
