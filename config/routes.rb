Rails.application.routes.draw do
  root "sessions#new" 

  get "/signup", to: "users#new", as: :register
  post "/users", to: "users#create"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get '/logout', to: 'sessions#new', as: 'logout'

  get '/principal', to: 'pages#principal'
  get '/artigos', to: 'pages#tela_lista_artigos'
  post "/salvar_artigo", to: "pages#salvar_artigo"
  delete "/remover_artigo/:id", to: "pages#remover_artigo", as: "remover_artigo"
  
  get "up" => "rails/health#show", as: :rails_health_check

end
