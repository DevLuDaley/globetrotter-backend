class VisitSerializer < ActiveModel::Serializer
  attributes :id, :name, :trip_id, :attraction_id, :date
end
