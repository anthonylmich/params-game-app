Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/name"=>"params_game#name"
  get "/number_game"=>"params_game#number"
  get "/name_game"=>"params_game#name_game
  "
  get "name_game2/:wildcard" => "params_game#name_game2"
  get "sum_of/:wildcard1/:wildcard2" => "params_game#sum"
  get "num_game/:wildcard1" => "params_game#num_game"

end
