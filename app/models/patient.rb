class Patient < ApplicationRecord
    has_one :address
    has_many :telephones

    has_and_belongs_to_many :doctors

    has_one_attached :photo

    validates :name, presence: true
    validates :email, presence: true

    accepts_nested_attributes_for :address
    accepts_nested_attributes_for :telephones, allow_destroy: true

    scope :under_years, ->(count) { where("birthdate >= ? ", Date.today - count.years) }
end
