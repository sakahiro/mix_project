class CreatProjectsUsers < ActiveRecord::Migration
  def change
  	create_table :projects_users, id: false do |t|
      t.references :project, index: true
      t.references :user, index: true
    end
  end
end
