class V1::AuthSessionsController < ApplicationController
  def create
    user = User.where(email: params[:email]).first

    if user&.valid_password?(params[:password])
      render json: user.as_json(only: [:email, :authentication_token]), status: :created
    else
      head(:unauthorized)
    end
  end

  def destroy
    user = User.where(authentication_token: params[:token]).first

    if user
      user.authentication_token = nil
      user.save
      render json: user.as_json(only: [:email]), status: 200
    else
      head(:unauthorized)
    end
  end
end
