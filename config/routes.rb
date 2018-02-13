Rails.application.routes.draw do
  root to: "home_page#index"
  get '/pull_requests', to: 'pull_requests#index'
  get '/pulse', to: 'insights#pulse'
  get '/contributors', to: 'insights#contributors'
  get '/community', to: 'insights#community'
  get '/traffic', to: 'insights#traffic'
  get '/commits', to: 'insights#commits'
  get '/code_frequency', to: 'insights#code_frequency'
  get '/dependency_graph', to: 'insights#dependency_graph'
  get '/network', to: 'insights#network'
  get '/forks', to: 'insights#forks'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'
  resources :users
end
