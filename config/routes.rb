Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :blogs 
  resources :comments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/user_delete',to: "users#user_delete"
  get '/blog_delete',to: "blogs#blog_delete"
  get '/comment_delete',to: "comments#comment_delete"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  root 'sessions#new'
  delete '/logout', to: 'sessions#destroy'
end
