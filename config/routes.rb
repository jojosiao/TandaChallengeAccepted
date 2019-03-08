Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#signin'

  get '/signup', to: 'users#signup', as: 'signup'
  post '/signup', to: 'users#signup'
  get '/signin', to: 'users#signin', as: 'signin'
  post '/signin', to: 'users#signin'

  get '/logout', to: 'users#logout', as: 'logout'
  
  get '/dashboard', to: 'dashboard#index', as: 'dashboard_index'

  scope '/dashboard' do
    resources :organizations  do 
      resources  :shifts
    end
  end

end
