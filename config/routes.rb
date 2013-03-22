Devisedemo::Application.routes.draw do

  # omniauth
  match '/auth/:provider/callback', :to => 'user_sessions#create'
  match '/auth/failure', :to => 'user_sessions#failure'

  # Custom logout
  match '/logout', :to => 'user_sessions#destroy'
  match '/destroy_comment', :to =>'comment#destroy'
  resources :posts do
    resources :comments
  end
  root :to => 'posts#index'

  
  
  
end
