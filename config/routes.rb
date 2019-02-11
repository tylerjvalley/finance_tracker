Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#my_portfolio'
  get 'welcome/index', to: 'welcome#index'
  get 'search_stocks', to: 'stocks#search'
  resources :user_stocks, only: [:create, :destroy]

end
