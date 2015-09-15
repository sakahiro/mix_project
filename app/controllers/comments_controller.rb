class CommentsController < ApplicationController
	before_action :set_comment

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(comment_params)

		if @comment.save
			redirect_to project_path(@comment.project), notice: "コメントしました"
		else
			render :new
		end
	end

	def edit
	end

	def update

	end

	def delete
	end

	private

	def set_comment
		@comment = Comment.find(params[:id])
	end

	def comment_params
		params.require(:comment).permit(:contents)
	end
end
