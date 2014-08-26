class Sighting < ActiveRecord::Base
  validates :specie_id, :presence => true
  validates :longitude, :presence => true
  validates :latitude, :presence => true

  belongs_to :specie
end
