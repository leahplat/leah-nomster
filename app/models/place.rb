class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode


  validates :name, length: { minimum: 3}
  validates :address, length: { minimum: 3}
  validates :description, length: { minimum: 3}

  
  validates :name, length: {minimum: 3}
  validates :address, presence: true
  validates :description, presence: true

end
