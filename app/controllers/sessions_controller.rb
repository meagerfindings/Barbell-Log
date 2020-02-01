class SessionsController < ApplicationController
  def create
    @session = Session.new(session_params)

    @session.save
    redirect_to @session
  end

  private
  def session_params
    params.require(:session).permit(
      :lifts,
      :trainee_notes
    )
  end
end
