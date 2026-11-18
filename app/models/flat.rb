class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price_per_night, presence: true
  validates_numericality_of :price_per_night, only_integer: true
  validates :number_of_guests, presence: true
  validates_numericality_of :number_of_guests, only_integer: true
end
