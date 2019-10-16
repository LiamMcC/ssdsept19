Rails.application.routes.draw do
  
 # get 'cart/index'

  resources :items
  root 'static_pages#home'

  get '/help' => 'static_pages#help'

  get '/about' => 'static_pages#about'
  
  
  get '/login' => 'user#login'
  
    get '/logout' => 'user#logout'
    
    
    
    
    
    # This looks like what we did for the add item ...... Muuhhhhh yes Liam you are right......
    
    
get '/remove/:id' => 'cart#remove'


get '/reduce/:id' => 'cart#reduce'


get '/cart/clearcart' => 'cart#clearcart'

get '/cart' => 'cart#index'

get '/cart/:id' => 'cart#add'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
