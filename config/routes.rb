Rails.application.routes.draw do
<<<<<<< HEAD
<<<<<<< HEAD
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  root to: "home_page#index"
=======
=======
  get '/pull_requests', to: 'pull_requests#index'
>>>>>>> f97c02e... Add pull_requests controller
  get '/pulse', to: 'insights#pulse'
  get '/contributors', to: 'insights#contributors'
  get '/community', to: 'insights#community'
  get '/traffic', to: 'insights#traffic'
  get '/commits', to: 'insights#commits'
  get '/code_frequency', to: 'insights#code_frequency'
  get '/dependency_graph', to: 'insights#dependency_graph'
  get '/network', to: 'insights#network'
  get '/forks', to: 'insights#forks'
>>>>>>> 4daccad... Init Insights controller
end
