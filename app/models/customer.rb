class Customer < ApplicationRecord
  has_one :servant
  belongs_to :restaurant
  has_one :table
end
