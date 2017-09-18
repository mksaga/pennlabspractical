Rails.application.routes.draw do

  get 'lists/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#home'
  get 'static_pages/home'
  get '/newcard',  to: 'cards#new'
  get '/newlist',  to: 'lists#new'
  # get '/newlist',  to: 'lists#new'
  # get '/new',   to: 'cards#new'

  # get  '/about',   to: 'static_pages#about'
  # get  '/contact', to: 'static_pages#contact'


  resources :cards
  resources :lists


end
