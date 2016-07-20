Rails.application.routes.draw do

  resources :messages
  devise_for :users
  root to: "users#index"
  resources :users do
    member do
      post :friendships, to: 'friendships#create', as: 'new_friend'
      delete  :friendships, to: 'friendships#delete', as: 'delete_friend'
    end

  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
