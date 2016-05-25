Rails.application.routes.draw do
  resources :hardware_triggers
  resources :sessions
  resources :petinfos
  
  root 'users#index'

  # rails s -p $PORT -b $IP
  get 'sessions/new'
  
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  


  get 'history' => 'users#history'
  get 'index' => 'messages#index'
  
  
  get "petinfos/myaccount"
  get "petinfos/editprofile"
  match '/myaccount' => 'petinfos#myaccount', :via => :get
  match '/editprofile' => 'petinfos#editprofile', :via => :get


  get 'users/:id/privacy' => 'users#privacy'

  resources :users

  resources :petinfos

end