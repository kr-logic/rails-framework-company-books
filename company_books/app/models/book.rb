class Book < ApplicationRecord
  # Kötelező mezők: title, author, isbn
  validates :title, :author, :isbn, presence: true

  # Az ISBN legyen egyedi
  validates :isbn, uniqueness: true

  # Oldalszám: szám legyen, minimum 1, maximum 5000
  validates :pages, numericality: { 
    only_integer: true, 
    greater_than_or_equal_to: 1, 
    less_than_or_equal_to: 5000 
  }
end