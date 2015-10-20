Rails.application.routes.draw do
  get '/' => 'users#index'

  get '/users/show' => 'users#show'

  get '/users/new' => 'users#new'

  post '/users' => 'users#create'

end
