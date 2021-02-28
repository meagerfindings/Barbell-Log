Rails.application.routes.draw do
  scope :api, defaults: {format: :json} do
    resources :examples

    devise_for :users, controllers: {sessions: 'sessions'}
    devise_scope :user do
      get 'users/current', to: 'sessions#show'
    end
  end

  namespace :v1, defaults: {format: :json} do
    resources :training_sessions
    resources :users
  end

  # get "*path", to: "application#frontend", constraints: ->(request) { frontend_request?(request) }
  #
  # def frontend_request?(request)
  #   !request.xhr? && request.format.html?
  # end
end
