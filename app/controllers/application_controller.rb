class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  
before_filter :commonMethod 
def commonMethod
  @categories = Category.all
  
end
  
  
  
end
