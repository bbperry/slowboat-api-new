class OrderDetailSerializer < ActiveModel::Serializer
  attributes :id, :total
  has_one :user_id
end
