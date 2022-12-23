class Author < ApplicationRecord
  validates :name,:age,:dob,:gender,:jdate, presence: true
  has_many :books
end
