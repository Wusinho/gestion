class ProjectParticipantsController < ApplicationController
  before_action :set_project_participants, only: [:update]

  def index
  end

  def create
    @project_participant = ProjectParticipant.new(project_participant_params)
    if @project_participant.save
      render turbo_stream: turbo_stream.remove("user_#{@project_participant.user.id}")
    else
      turbo_error_message(@project_participant)
    end
  end

  def show
  end

  def update
    if @project_participant.update(status: 1)
      render turbo_stream: turbo_stream.replace("project_participant_#{@project_participant.id}",
                                                partial: 'projects/project',
                                                locals: { project_participant: @project_participant, project: @project_participant.project}

                                                )
    else

    end
  end

  private

  def set_project_participants
    @project_participant = ProjectParticipant.find(params[:id])
  end

  def project_participant_params
    params.require(:project_participant).permit(:user_id, :project_id).merge(role: params[:project_participant][:role].to_i)
  end
end
