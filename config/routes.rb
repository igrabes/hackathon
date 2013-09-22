Hackathon::Application.routes.draw do

  devise_for :users
  resources :dashboard

  root :to => 'posts#splash'

  resources :posts
  resources :player_mlbs
  resources :leagues

  get 'posts/:id/upvote' => 'posts#upvote'
  get 'posts/:id/downvote' => 'posts#downvote'
  get 'searches/data_tables'
  get '/splash' => 'posts#splash'

  post 'searches/save_table'


end
