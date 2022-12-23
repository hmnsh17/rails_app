class Table < ApplicationRecord
  has_one :customer
  belongs_to :restaurant
  has_one :servant
end
