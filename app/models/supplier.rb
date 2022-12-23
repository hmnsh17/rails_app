class Supplier < ApplicationRecord
  validates :name,presence: true,length:{maximum:10}
  has_one :account
end
