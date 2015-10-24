class RolesController < ApplicationController
	def create
		@user = User.find(current_user)
		@role = @user.roles.new(role_params)
		if @role.save
			redirect_to project_path(@role.project), notice: "参加しました"
		else
		end
	end

	private
	def role_params
		params.require(:role).permit(:role_name, :project_id)
	end
end
