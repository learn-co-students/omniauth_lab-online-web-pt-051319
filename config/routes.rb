Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'

  # get 'welcome/home' => 'welcome#home'
  # get '/auth/:provider/callback', to: "sessions#create"
  get '/auth/facebook/callback', to: "sessions#create"
  post '/logout' => 'sessions#destroy'
end
