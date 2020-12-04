class TripSerializer < ActiveModel::Serializer
  # include JSONAPI::Serializer
  attributes :id, :start_date, :end_date, :location_id, :user_id
end
