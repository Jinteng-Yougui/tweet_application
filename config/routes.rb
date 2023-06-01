Rails.application.routes.draw do
  resources :birds do
    collection do
      post :confirm
    end
  end
end