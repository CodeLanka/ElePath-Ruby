class Location < ApplicationRecord
  belongs_to :elephant
  belongs_to :user
end
