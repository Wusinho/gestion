class ProjectsController < ApplicationController
  def index
    @project = Project.new
    @projects = current_user.projects
  end

  def create
    @project = Project.new(projects_params)

    if @project.save
      redirect_to projects_path
    else
      turbo_error_message(@projects)
    end
  end

  private

  def projects_params
    params.require(:project).permit(:title, :slug, :description).merge(user_id: current_user.id)
  end
end
