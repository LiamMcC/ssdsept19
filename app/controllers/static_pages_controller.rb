class StaticPagesController < ApplicationController
  def home
   # current_user.update_attribute :admin, true
  end

  def help
 

    
  end

  def about
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
