Rails.application.routes.draw do
  resources :bookmarks
  root 'home#index'
  get 'home/index'
  resources :kinds
  resources :categories
  get 'categories/:id/api', to: 'categories#api', as: 'api'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
