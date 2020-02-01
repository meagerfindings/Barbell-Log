Rails.application.routes.draw do
  namespace :v1 do
    resources :sessions
    resources :users
  end

  get "*path", to: "application#frontend", constraints: ->(request) { frontend_request?(request) }

  def frontend_request?(request)
    !request.xhr? && request.format.html?
  end
end
