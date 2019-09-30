Rails.application.routes.draw do

  root 'home#index'

  get 'home/index'
  get 'explore', to: 'home#explore'
  get 'shop', to: 'home#shop'
  get 'stay', to: 'home#stay'
  get 'maps', to: 'home#maps'
  get 'conditions', to: 'home#conditions'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
