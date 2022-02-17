class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :text, :rating, :user_id, :created_at
  has_one :user
end
