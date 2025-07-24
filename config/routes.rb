Rails.application.routes.draw do
  root "sessions#new" 

  get "/signup", to: "users#new"
  post "/users", to: "users#create"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get '/logout', to: 'sessions#new', as: 'logout'

  get '/principal', to: 'pages#principal'
  get '/artigos', to: 'pages#tela_lista_artigos'
  
  get "up" => "rails/health#show", as: :rails_health_check

end
