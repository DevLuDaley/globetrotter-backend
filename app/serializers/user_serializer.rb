# class UserSerializer < ActiveModel::Serializer
class UserSerializer < ActiveModel::Serializer
  belongs_to :hometown, class_name: "Location", optional: true

  attribute :id
  attribute :name
  # attribute :trips
  attribute :hometown
  has_many :trips
  has_many :comments
  has_many :attractions, through: :trips
  has_many :locations, through: :trips
  has_many :visits, through: :trips

end
