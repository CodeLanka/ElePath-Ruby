class Elephant < ApplicationRecord
  has_many :location

  validates :name, presence: true
end
