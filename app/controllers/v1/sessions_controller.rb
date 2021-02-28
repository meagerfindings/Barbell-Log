class V1::TrainingSessionsController < ApplicationController
  def index
    @training_sessions = TrainingSession.all

    render json: @training_sessions, status: :ok
  end

  def create
    @training_sessions = TrainingSession.new(session_params)
  end

  def destroy
    @training_sessions = TrainingSession.where(id: params[:id]).first
    if @training_session.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  private

  def session_params
    params.require(:training_session).permit(:due_date)
  end
end
