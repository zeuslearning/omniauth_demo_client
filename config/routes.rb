Devisedemo::Application.routes.draw do

  # omniauth
  match '/auth/:provider/callback', :to => 'user_sessions#create'
  match '/auth/failure', :to => 'user_sessions#failure'

  # Custom logout
  match '/sign_in_provider', :to => 'posts#sign_in_provider'
  match '/show_post', :to => 'posts#index'
  match '/logout', :to => 'user_sessions#destroy'
  match '/destroy_comment', :to =>'comment#destroy'
  resources :posts do
    resources :comments
  end
  resources :comments do
    
  end
  root :to => 'home#index'

  
  
  
end
