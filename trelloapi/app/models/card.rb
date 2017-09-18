class Card < ApplicationRecord

  # testing that title and description are present

  validates :title, presence: true
  validates :description, presence: true
  belongs_to :list
end
