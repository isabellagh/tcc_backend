Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do 
      resources :classrooms, only: [:index, :create, :update, :delete]
    end 
  end 

  namespace :api do
    namespace :v1 do 
      resources :teachers, only: [:index, :create, :update, :delete]
    end 
  end 

  namespace :api do
    namespace :v1 do 
      resources :children, only: [:index, :create, :update, :delete]
    end 
  end

end
