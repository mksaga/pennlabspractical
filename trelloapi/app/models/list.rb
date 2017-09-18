class List < ApplicationRecord

  validates :order, uniqueness: true

end
