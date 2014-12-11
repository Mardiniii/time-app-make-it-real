class DashboardController < ApplicationController
	def show
		@activities = Activity.all
		@activity = Activity.new
	    @projects = Project.all
	end
end
