class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :project

	validates :contents, presence: true
end
