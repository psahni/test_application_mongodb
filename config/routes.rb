TestAppMongodb::Application.routes.draw do
  
  devise_for :users

  root :to => 'stories#index'

  resources :stories do 
    resources :comments
  end
  
  resources :session
  resources :registrations
  resources :passwords
  
end
