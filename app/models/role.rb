class Role < ActiveRecord::Base
	belongs_to :user
	belongs_to :project

	validates :role_name, presence: true
	validates :project_id, uniqueness: {
		message: "すでに参加しています",
		scope: [:user_id]
	}
	after_create :connect_user_and_project
	after_destroy :disconnect_user_and_project

	def connect_user_and_project
		unless user.projects.include? project
			user.projects << project
		end
	end

	def disconnect_user_and_project
		if !project.comments.where(user_id: user.id).exists? &&
			!project.roles.where(user_id: user.id).exists?
			user.projects.delete(project)
		end
	end
end
