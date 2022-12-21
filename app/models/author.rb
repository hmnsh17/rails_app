class Author < ApplicationRecord
  validates :name,:age,:dob,:gender,:jdate, presence: true
end
