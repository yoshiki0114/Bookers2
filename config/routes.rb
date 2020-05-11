Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#top'
  resources :books
  resources :users
  resources :home, only: [:about] do
  	collection do
  		get 'about'
  	end
  end
end
