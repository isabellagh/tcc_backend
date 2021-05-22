Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :children, only: [:index, :create, :update, :delete]
      resources :classrooms, only: [:index, :create, :update, :delete]
      resources :users, only: [:create, :index]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end

  

end
