class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :session_id
  has_one :product_id
end
