class User < ApplicationRecord
  has_secure_password
  belongs_to :hometown, class_name: "Location", optional: true
# ! uncommented to test serializer
  has_many :trips
  has_many :comments
  has_many :visits, through: :trips
  has_many :attractions, through: :trips
  has_many :locations, through: :trips

  def daley
    self.trips.map { |trip| {name: trip.name}}
    # "hi Lu!"
  end
#   validates :name, :username, :hometown, presence: true
#   validates :username, uniqueness: true
end
