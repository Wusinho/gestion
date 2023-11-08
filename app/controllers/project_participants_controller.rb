class ProjectParticipantsController < ApplicationController

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

  private

  def project_participant_params
    params.require(:project_participant).permit(:user_id, :project_id).merge(role: params[:role].to_i)
  end
end
