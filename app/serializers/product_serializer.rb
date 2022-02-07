class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :desc, :price, :total_quantity, :image, :discount_id
end
