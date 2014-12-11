class DashboardController < ApplicationController
	def show
		@activity = Activity.new
	    @projects = Project.all
	end
end
