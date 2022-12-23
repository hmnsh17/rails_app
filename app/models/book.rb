class Book < ApplicationRecord
  validates :name,presence: true,length: { maximum: 10 }
  validates :title,presence: true,length: { maximum: 10 }
  validates :description,presence: true,length: { maximum: 255 }
  belongs_to :author
end
