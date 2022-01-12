Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/name"=>"params_game#name"
  get "/number_game"=>"params_game#number"
  get "/name_game"=>"params_game#name_game"
end
