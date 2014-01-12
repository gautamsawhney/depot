class LineItem < ActiveRecord::Base
	attr_accessible :product_id, :cart_id, :id, :created_at, :updated_at, :product,:quantity

  belongs_to :product
  belongs_to :cart

  def total_price
product.price * quantity
end
end