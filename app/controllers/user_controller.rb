class UserController < ApplicationController
    
    
    def login
        
    session[:login] = 1
    flash[:notice] = "User Just Logged In"
    redirect_to :controller => :items
    
    end

    
    def logout
        
      session[:login] = nil
    flash[:notice] = "Ok ... See You Next Time"  
redirect_to :controller => :items
  end     
    
    
    
    
end
