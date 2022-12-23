class Restaurant < ApplicationRecord
  has_many :customers
  has_many :tables
  has_many :servants
end
