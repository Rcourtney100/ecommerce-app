Rails.application.routes.draw do


resources :users, :products, :wishlists, :carts, :sessions

    root 'products#index'

    post '/sessions/destroy'

 	post '/carts/add_to_cart'

 	post '/carts/delete_from_cart'

 	post 'carts/check_out'

 	post '/wishlists/add_to_wishlist'

 	post '/wishlists/delete_from_wishlist'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
