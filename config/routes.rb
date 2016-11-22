Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :songs do
  	resources :user_songs, only:[:create]
  end

  resources :users, only: [:index, :show] do
  	resources :user_songs, only:[:destroy]
  end
  resources :genres
  root 'songs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
