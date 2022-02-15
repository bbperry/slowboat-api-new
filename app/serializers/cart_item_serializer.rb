class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :quantity, :price
  belongs_to :product
end
