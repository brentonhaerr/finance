Rails.application.routes.draw do
  
  get '/users', to: 'welcome#index'
  devise_for :users
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'my_portfolio', to: 'users#my_portfolio'
end
