class TrainingSessionsController < ApplicationController
  def create
    @training_session = TrainingSession.new(session_params)

    @training_session.save
    redirect_to @training_session
  end

  private
  def session_params
    params.require(:training_session).permit(
      :lifts,
      :trainee_notes
    )
  end
end
