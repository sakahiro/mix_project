class CommentsController < ApplicationController
	before_action :set_comment, only: [:edit, :update, :destroy]

	def create
		@user = User.find(current_user)
		@comment = @user.comments.new(comment_params)

		if @comment.save
			redirect_to project_path(@comment.project), notice: "コメントしました"
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @comment.update(comment_params)
			redirect_to project_path(@commetn.project), notice: "コメントを修正しました"
		else
			render :edit
		end
	end

	def destroy
		@comment.destroy
		redirect_to projects_path, notice: 'コメントを削除しました'
	end

	private

	def set_comment
		@comment = Comment.find(params[:id])
	end

	def comment_params
		params.require(:comment).permit(:content, :project_id)
	end
end
