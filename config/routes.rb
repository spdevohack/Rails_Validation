Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "flipkarts#index"
  get 'flipkarts', to: 'flipkarts#index'
  get "flipkarts/new" => "flipkarts#new"

  post "flipkarts/new" => "flipkarts#create"

  get "flipkarts/:id" => "flipkarts#show"

  get "flipkarts/:id/edit" => "flipkarts#edit"

  # patch "flipkarts/:id" => "flipkarts#update"

  # put "flipkarts/:id" => "flipkarts#update"


  delete "flipkarts/:id" => "flipkarts#delete"

  resources :flipkarts

end
