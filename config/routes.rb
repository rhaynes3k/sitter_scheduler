Rails.application.routes.draw do
  resources :guardians
  resources :sitters
  devise_for :users
  # root 'sitters#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
