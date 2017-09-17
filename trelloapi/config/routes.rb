Rails.application.routes.draw do
  get 'users/new'

  get 'static_pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'cards#new'
  get '/help',  to: 'static_pages#help'
  # get '/new',   to: 'cards#new'
  resources :cards


end
