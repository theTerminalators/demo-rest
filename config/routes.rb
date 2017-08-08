Rails.application.routes.draw do
  get '/plants' => 'plants#index'
  get '/plants/new' => 'plants#new'
  get '/plants/:id' => 'plants#show'
  post '/plants' => 'plants#create'
  get '/plants/:id/edit' => 'plants#edit'
  patch '/plants/:id' => 'plants#update'
  delete '/plants/:id' => 'plants#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
