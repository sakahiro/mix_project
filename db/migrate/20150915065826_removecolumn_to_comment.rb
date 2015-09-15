class RemovecolumnToComment < ActiveRecord::Migration
  def change
  	remove_column :comments, :contentable_type, :string
  end
end
