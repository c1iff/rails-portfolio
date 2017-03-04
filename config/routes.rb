Rails.application.routes.draw do
  root to: 'home#index'
  resources :repos, :only => [:index]
end
