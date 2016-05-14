Rails.application.routes.draw do
  resources :emergencies, only: [:create, :index, :show, :update]
  resources :responders, only: [:create, :index, :show, :update]
end
