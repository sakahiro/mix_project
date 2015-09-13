class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :role_name, null: false
      t.integer :user_id, null: false
      t.integer :product_id, null: false

      t.timestamps null: false
    end
  end
end
