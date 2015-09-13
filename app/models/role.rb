class Role < ActiveRecord::Base
	belongs_to :user
	belongs_to :project

	validates :role_name, presence: true
end
