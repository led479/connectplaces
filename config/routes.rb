Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  root 'paginas_estaticas#index'
#  resources :pessoas
  resources :pessoas do
    resources :lugares
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
