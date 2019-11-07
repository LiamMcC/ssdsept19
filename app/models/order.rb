class Order < ApplicationRecord
 def order_params
        params.require(:order).permit( :order_date, :user_id, :status)
    end
    
  
 has_many :orderitems
 belongs_to :user

end
