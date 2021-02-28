Rails.application.routes.draw do
  scope :api, defaults: {format: :json} do
    devise_for :users
    resources :examples
  end

  namespace :v1, defaults: {format: :json} do
    resources :sessions
    resources :users
  end

  # get "*path", to: "application#frontend", constraints: ->(request) { frontend_request?(request) }
  #
  # def frontend_request?(request)
  #   !request.xhr? && request.format.html?
  # end
end
