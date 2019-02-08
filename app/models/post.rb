class Post < ApplicationRecord
	# default_scope { order('id ASC') }

  belongs_to :user
  has_many :comments
  has_many :likes, as: :likeable
  mount_uploader :image, ImageUploader

  # scope :ordered, -> { order('created_at ASC') }
  
  def self.list_by
    order("text ASC")
    
  
  end
  
  def paypal_url(return_url)
    values = {
      :business => 'richayuvasoft@gmail.com',
      :cmd => '_cart',
      :upload => 1,
      :return => return_url,
    }
    values.merge!({
       "amount_1" => 100.00,
       "item_name_1" => 'name' ,
       "item_number_1" => id,
       "quantity_1" => '1'
    })
    "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
  end


  

end
