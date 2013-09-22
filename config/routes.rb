Hackathon::Application.routes.draw do

  devise_for :users
  resources :dashboard

  root :to => 'home#index'

  resources :posts
  resources :player_mlbs
  resources :leagues

  get 'posts/:id/upvote' => 'posts#upvote'
  get 'posts/:id/downvote' => 'posts#downvote'
  get "searches/data_tables"


end
