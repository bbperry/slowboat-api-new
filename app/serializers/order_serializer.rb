class OrderSerializer < ActiveModel::Serializer
  attributes :id, :total_price, :total_quantity
  has_many :cart_items
end
