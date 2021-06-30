Rails.application.routes.draw do
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/posts" => "posts#index"
  get "/posts/:id" => "posts#show"
  post "posts" => "posts#create"
end
