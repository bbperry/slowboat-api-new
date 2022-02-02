class DiscountSerializer < ActiveModel::Serializer
  attributes :id, :name, :desc, :discount_percent
end
