Hackathon::Application.routes.draw do

  root :to => 'posts#index'

  resources :posts
  resources :player_mlbs
  resources :leagues

  get 'posts/:id/upvote' => 'posts#upvote'
  get 'posts/:id/downvote' => 'posts#downvote'
  get "searches/data_tables"


end
