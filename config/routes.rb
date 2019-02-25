Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/signup', to: 'users#signup', as: 'signup'
  get '/signin', to: 'users#signin', as: 'signin'
  get '/logout', to: 'users#logout', as: 'logout'
  

  resources :organizations ,  :shifts

end
