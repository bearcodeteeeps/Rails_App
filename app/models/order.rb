class Order < ApplicationRecord
  def paypal_url(return_url)
    Binding.pry
    values = {
      business: 'richayuvasoft@gmail.com',
    #   :cmd => '_cart',
    #   :upload => 1,
    #   :return => return_url
              }
    # values.merge!({
    #   # "amount_1" => price,
    #   # "item_name_1" => order_name ,
    #   "item_number_1" => order.id,
    #   "quantity_1" => '1'
    # })
 
    "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query 
  end
    
	# def purchase
 #    response = EXPRESS_GATEWAY.purchase(order.total_amount_cents, express_purchase_options) if response.success?
 #      cart.update_attribute(:purchased_at, Time.now) if response.success?
 #  end

 #  def express_token=(token)
 #    self[:express_token] = token

 #    if new_record? && !token.blank?
 #      # you can dump details var if you need more info from buyer
 #      details = EXPRESS_GATEWAY.details_for(token)
 #      self.express_payer_id = details.payer_id
 #      puts details
 #    end
 #  end

 #  private

 #  def express_purchase_options
 #    debugger
 #    {
 #      :ip => ip,
 #      :token => express_token,
 #      :payer_id => express_payer_id
 #    }
 #  end

end
