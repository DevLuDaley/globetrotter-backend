class LocationSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
    # include JSONAPI::Serializer
  attributes :city, :state, :country
end
