Rails.application.routes.draw do
  
  resources :categories
  resources :orders do 
    resources:orderitems
  end

  
  
  
  devise_for :users do 
    resources :orders 
  end
  
  post '/search' => 'items#search'
  get 'category/:title' => 'static_pages#category'
  
 # get 'cart/index'

  resources :items
  root 'static_pages#home'

  get '/help' => 'static_pages#help'

  get '/about' => 'static_pages#about'
  
  
  get '/login' => 'user#login'
  
    get '/logout' => 'user#logout'
    
    
    get '/checkout' => 'cart#createOrder' 
    
    
    # This looks like what we did for the add item ...... Muuhhhhh yes Liam you are right......
    
    
get '/remove/:id' => 'cart#remove'


get '/reduce/:id' => 'cart#reduce'


get '/cart/clearcart' => 'cart#clearcart'

get '/cart' => 'cart#index'

get '/cart/:id' => 'cart#add'

get '/upgrade/:id' => 'static_pages#upgrade'
get '/downgrade/:id' => 'static_pages#downgrade'

get '/allusers' => 'static_pages#allusers'


 get '/paid/:id' => 'static_pages#paid' 




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
