Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :children
      resources :classrooms
      # resources :users, only: [:create, :index]
      # post '/login', to: 'auth#create'
      # get '/profile', to: 'auth#profile'
    end
  end

  

end
