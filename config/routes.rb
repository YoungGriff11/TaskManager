Rails.application.routes.draw do
  namespace :api do
    post '/register', to: 'auth#register'
    post '/login', to: 'auth#login'
    resources :tasks, only: [:index, :create, :update, :destroy]
  end

  # Health check
  get '/health', to: ->(env) { [200, {}, ['OK']] }
end
