Rails.application.routes.draw do

  
  root 'home#index'

  get 'admin', :to => 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  get 'home/index'
  get 'explore', to: 'home#explore'
  get 'shop', to: 'home#shop'
  get 'stay', to: 'home#stay'
  get 'maps', to: 'home#maps'
  get 'conditions', to: 'home#conditions'
  get 'business', to: 'home#businesses'

  resources :businesses do
    member do
      get :delete
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
