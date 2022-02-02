class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :text
  has_one :user_id
end
