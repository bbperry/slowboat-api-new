class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :product_id, :quantity, :price
  
end
