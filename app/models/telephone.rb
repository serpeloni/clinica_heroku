class Telephone < ApplicationRecord
  belongs_to :patient

  validates :number, presence: true
  validates :kind, presence: true

  enum kind: [ :home, :mobile, :commercial ]
end
