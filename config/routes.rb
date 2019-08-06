Rails.application.routes.draw do
  root "gold_places#index"
  resources :schedules
  resources :plans
  resources :gold_places
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
