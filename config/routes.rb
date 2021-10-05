Rails.application.routes.draw do
  #get 'home/index'
 # get 'posts/new'
  #get 'posts/index'
  #get 'post/show'
  devise_for :users
  resources :posts
  root :to => 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
