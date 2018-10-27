Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  root 'paginas_estaticas#index'
#  resources :pessoas
  resources :pessoas do
    resources :lugares
  end
  get 'lugares/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
