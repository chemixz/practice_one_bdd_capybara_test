Rails.application.routes.draw do
  
  root to: 'welcome#index'
	get 'about', to: 'pages#about'
  
  # devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :articles
	get 'signup', to: 'users#new'
	resources :users, except: [:new]
	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	get 'logout', to: 'sessions#destroy'

  resources :categories
end
