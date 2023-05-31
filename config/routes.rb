Rails.application.routes.draw do
  get '/birds', to: 'birds#index'
  resources :birds
end
