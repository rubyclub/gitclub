Rails.application.routes.draw do
  resources :users

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
end
