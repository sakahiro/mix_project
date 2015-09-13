class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content, limit: 150, null: false
      t.integer :user_id, null: false
      t.integer :product_id, null: false

      t.timestamps null: false
    end
  end
end
