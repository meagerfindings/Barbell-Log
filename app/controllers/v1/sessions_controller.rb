class V1::SessionsController < ApplicationController
  def index
    @sessions = Session.all

    render json: @sessions, status: :ok
  end

  def create
    @session = Session.new(session_params)
  end

  def destroy
    @session = Session.where(id: params[:id]).first
    if @session.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  private

  def session_params
    params.require(:session).permit(:due_date)
  end
end
