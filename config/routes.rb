Rails.application.routes.draw do
  get 'cheats/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "cheats#index"
  resources :cheats, only: [:index, :new, :create, :show]
end
