Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  root 'paginas_estaticas#index'
  resources :pessoas, only: [:show, :new, :create, :edit, :update, :destroy] do
    resources :lugares, only: :index
  end
  resources :lugares
  resources :comentarios, only: [:create, :destroy]

  get 'lugares/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
