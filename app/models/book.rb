class Book < ApplicationRecord
  belongs_to :subject
  validates_presence_of :title, :url
  validates_numericality_of :price, message: 'Error Message'
end
