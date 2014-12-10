class ProjectsController < ApplicationController
	before_action :authenticate_user!

	def index
		@projects = Project.all
	end

	def show
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		@project.user = current_user
		@project.save
	end

	def edit
	end

	def update
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to projects_path
	end

	private

	def project_params
      params.require(:project).permit(:name)
    end


end
