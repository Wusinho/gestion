class ProjectsController < ApplicationController
  before_action :set_project, only: [:show]
  def index
    @project = Project.new
    @projects = current_user.projects
  end

  def show
    @project_participant = ProjectParticipant.find_by(user_id: current_user.id,
                                              project_id: @project.id)
    @users_emails = @project.missing_participants
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

  def set_project
    @project = Project.find(params[:id])
  end

  def projects_params
    params.require(:project).permit(:title, :slug, :description).merge(user_id: current_user.id)
  end
end
