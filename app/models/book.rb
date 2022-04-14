class Book < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :date, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0}
  validates :page, numericality: {greater_than_or_equal_to: 0}
  validates :ISBN, presence: true, uniqueness: true
end