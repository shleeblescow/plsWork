
Rails.application.routes.draw do
  resources :wx_cards
  resources :run_runner_joins
  resources :runs
  resources :runners

  post '/login', to: 'sessions#create'
  delete '/logout', to:'sessions#delete' 
  get '/authorized_runner', to: 'runners#show'
  # get '/userprofile/:id', to: 'users#userprofile'

  # get '/createdtrips/:id', to:'users#createdtrips'
  # get '/joinedtrips/:id', to:'users#joinedtrips'
  # get '/profilebikes/:id', to:'users#profilebikes'
  # get '/userfunphotos/:id', to:'users#funphotos'

  # gona need a custom route for getting that users bikes me thinks (ew did i really just that?  gross)

  # get '*path',
  #     to: 'fallback#index',
  #     constraints: ->(req) { !req.xhr? && req.format.html? }
 
 
end
