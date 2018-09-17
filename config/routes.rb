Rails.application.routes.draw do
  get 'pessoas', to: 'pessoas#index'
  root 'paginas_estaticas#index'
  resources :pessoas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
