class EventSerializer < ActiveModel::Serializer
  attributes :id, :desc, :location, :date
  has_one :user_id
end
