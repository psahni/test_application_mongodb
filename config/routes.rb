TestAppMongodb::Application.routes.draw do
  
  
  authenticated :user do
    root :to => 'stories#index'
  end
  
  root :to => 'stories#index'

  resources :stories do 
    resources :comments
  end
  
  devise_for :users


end
