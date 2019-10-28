Rails.application.routes.draw do
  
  root 'welcome#home'
  get '/home', to: 'welcome#home', as: 'home'
  get '/login', to: 'sessions#new', as: 'login'
  get '/auth/facebook/callback', to: 'sessions#create'
  get '/signup', to: 'users#new', as: 'signup'
  post '/signup', to: 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
