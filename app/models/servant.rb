class Servant < ApplicationRecord
  belongs_to :restaurant
  belongs_to :customer
  belongs_to :table
end
