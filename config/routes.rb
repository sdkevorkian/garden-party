Rails.application.routes.draw do
  get 'about' => 'about#show'

  get 'plant' => 'plant#show'

  get 'profile/show' => 'profile#show'

  get 'profile/edit' => 'profile#edit'

post 'profile/edit' => 'profile#update'
  # post 'profile/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'main#index'

  #weather test
  get 'weather' => 'weather#show'
  # signup routes
  get 'signup' => 'signup#new'
  post 'signup' => 'signup#create'

  # login local routes
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'login' => 'sessions#destroy'

  # oauth routes
  get 'auth/logout' => 'auth#logout'
  get 'auth/failure' => 'auth#failure'
  get 'auth/:provider/callback' => 'auth#callback'
end
