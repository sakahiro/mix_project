class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title, limit: 30, null: false
      t.text :explanation, limit: 250, null: false
      t.string :image, null: false
      t.text :wanted, limit: 250, null: false
      t.boolean :doing, default: false, null: false
      t.boolean :done, default: false, null: false

      t.timestamps null: false
    end
  end
end
