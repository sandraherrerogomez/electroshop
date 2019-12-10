Rails.application.routes.draw do
  get 'welcome/view'
  get 'profile/view'
  get 'cart/order'
  get 'buy/listItems'
  get 'shop/listItems'
  get 'buy/shop'
  get 'index/home'
  get 'buy/viewItem'
  get 'cart/order'
  get 'cart/checkout'
  get 'registrations/confirmations'


  post '/buttonDelete', to: 'cart#buttonDelete', as: 'buttonDel'

  post '/button', to: 'buy#buttonClick', as: 'button'
  post '/button2', to: 'buy#cleanClick', as: 'button2'
  post '/button3', to: 'cart#buy', as: 'button3'

  resources :products
  resources :categories
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'welcome#view'

  devise_scope :user do
    get '/sign-in' => "devise/sessions#new", :as => :login
  end

end
