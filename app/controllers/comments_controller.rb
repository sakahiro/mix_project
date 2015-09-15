class CommentsController < ApplicationController
	before_action :set_comment

	def new
	end

	def create
	end

	def delete
	end

	private

	def set_comment
		@user = User.find(currnt.user)
		@comment = @user.comments.new
	end
end
