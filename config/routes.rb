Rails.application.routes.draw do
  resources :tabloiids
  root 'tabloiids#index'
  get '/new', to: 'tabloiids#new'
end
