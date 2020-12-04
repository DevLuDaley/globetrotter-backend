class AttractionSerializer < ActiveModel::Serializer
  # include JSONAPI::Serializer
  attributes :id, :name, :description, :location_id
end
