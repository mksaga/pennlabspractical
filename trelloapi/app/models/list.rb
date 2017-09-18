class List < ApplicationRecord
  has_many :cards
  validates :order, uniqueness: true

end
