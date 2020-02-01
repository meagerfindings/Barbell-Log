Rails.application.routes.draw do
  #devise_for :users
  root to: "application#frontend"

  namespace :v1 do
    resources :sessions
    resources :users
    resources :auth_sessions, only: [:create, :destroy]
  end

  get "*path", to: "application#frontend", constraints: ->(request) { frontend_request?(request) }

  def frontend_request?(request)
    !request.xhr? && request.format.html?
  end
end
