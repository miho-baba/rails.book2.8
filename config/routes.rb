Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'homes#top'
  get 'home/about' => 'homes#about',as: "about"

  resources :books
  resource :favorites, only: [:create, :destroy]
  resources :users, only: [:index, :show, :edit, :update, :destroy]

end
