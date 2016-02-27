Rails.application.routes.draw do
  get 'carts/show'

  devise_for :users, path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :products
  resources :promotions
  root "products#index"
  resource :carts, only:[:show] do 
    put 'add/:product_id', to: 'carts#add', as: :add_to
    put 'remove/:product_id', to: 'carts#remove', as: :remove_from
  end
end
