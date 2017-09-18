class Card < ApplicationRecord
  belongs_to :list

  # testing that title, list_id, description are present
  validates :title,       presence: true
  validates :description, presence: true
  validates :list_id,     presence: true

end
