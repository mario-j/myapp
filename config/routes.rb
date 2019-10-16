Rails.application.routes.draw do

  root 'application#index'

  get '/home', to: 'application#index'

  get '/about', to: 'application#about'

  get '/contact', to: 'application#contact'

  get '/eightball', to: 'application#eightball'
  
  get '/signup', to: 'users#new'
end


