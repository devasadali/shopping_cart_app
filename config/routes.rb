Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :products, only: [:index, :show] do
    member do
      post :add_to_cart
      delete :remove_from_cart
    end
  end
  root to: 'products#index'
  resource :cart, only: [:show, :update, :destroy] do
    member do
      post :add_item
      delete :remove_item
    end
  end
end
