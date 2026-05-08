class Book < ApplicationRecord
  # Mandatory fields: title, author, isbn
  validates :title, :author, :isbn, presence: true

  # ISBN is unique
  validates :isbn, uniqueness: true

  # Page count: number, min 1, max 5000
  validates :pages, numericality: { 
    only_integer: true, 
    greater_than_or_equal_to: 1, 
    less_than_or_equal_to: 5000 
  }
end