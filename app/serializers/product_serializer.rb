class ProductSerializer < ActiveModel::Serializer
  attributes :id, :fish, :desc, :price, :total_quantity, :image, :discount_id
end
