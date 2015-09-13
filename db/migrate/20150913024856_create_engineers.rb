class CreateEngineers < ActiveRecord::Migration
  def change
    create_table :engineers do |t|
      t.integer :history, null: false
      t.string :product, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end
