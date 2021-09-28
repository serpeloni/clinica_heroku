class Address < ApplicationRecord
  belongs_to :patient

  validates :street, presence: true
  validates :city, presence: true
  validates :number, presence: true, numericality: { only_integer: true }
end
