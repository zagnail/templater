Rails.application.routes.draw do
  root to:  "messages#index"

  resources :accounts
  resources :messages
  get "/choose", to: "pages#choose"
  post "/sent-message", to: "pages#sent"
end
