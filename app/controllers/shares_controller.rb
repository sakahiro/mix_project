class SharesController < ApplicationController
	def fail
		if params[:id] = 1
			@status = "作成"
		elsif params[:id] = 2
			@status = "修正"
		end
	end
end
