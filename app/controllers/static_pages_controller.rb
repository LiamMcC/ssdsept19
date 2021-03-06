class StaticPagesController < ApplicationController
  def home
   # current_user.update_attribute :admin, true
   
   @categories = Category.all
   
   
  end
  
  
  def category
    catName = params[:title]
    @items = Item.where("category like ? ", catName)
  end

  
  def dynamicPage
   catName = params[:location]
    @site_contents = SiteContent.where("location like ? ", catName)
  end
  

  def help
 

    
  end

  def about
       @user = User.find_by(id: params[:id])
    @user.update_attribute(:admin, true)
    redirect_to "/"
  end
  
  
  def allusers
   
    @users = User.all
  end
  
  
  
   
   def paid
    # redirect_to "/cart/clear"
    flash[:notice] = 'Transaction Complete'
       @order = Order.find_by(id: params[:id])
    @order.update_attribute(:status , "Paid by User: #{current_user.email}")
    #"Paid by User:#{current_user.id} #{current_user.name} #{current_user.surname}")
    
   end

   
  
  
  
   def upgrade 
    @user = User.find_by(id: params[:id])
    @user.update_attribute(:admin, true)
    redirect_to "/"
  end
  
   def downgrade 
    @user = User.find_by(id: params[:id])
    @user.update_attribute(:admin, false)
    redirect_to "/"
  end
  
  
  
  
  
  
end
