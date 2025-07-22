Rails.application.routes.draw do
  root "sessions#new" # ou outra rota inicial, se preferir

  get "/signup", to: "users#new"
  post "/users", to: "users#create"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "up" => "rails/health#show", as: :rails_health_check

end
