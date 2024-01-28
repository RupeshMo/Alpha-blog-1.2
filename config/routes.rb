Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # for the root page
    get '/', to: 'pages#home'

    # for website's articles section
    get 'about', to: 'pages#about' 

    # for resource article
    # get 'articles', to: 'articles#index'
    
    # get 'articles/:id', to: 'articles#show'
    resources :articles
    
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
