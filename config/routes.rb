Rails.application.routes.draw do
  get 'gossips/new'
  get 'gossips/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#hello"

  resources :gossips
  # patch 'gossips/new'

end
