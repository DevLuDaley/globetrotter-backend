class VisitSerializer < ActiveModel::Serializer
  # include JSONAPI::Serializer
  attributes :id, :name, :trip_id, :attraction_id, :date
end
