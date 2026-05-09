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

  ###################################
  # Additional functions for practice
  
  # premade scope for long books
  scope :long_books, -> { where('pages > ?', 500) }

  # search function for titles
  def self.search(query)
    if query.present?
      # % is to show results which contain the input string in title or author
      where('title LIKE ? OR author LIKE ?', "%#{query}%", "%#{query}%")
    else
      all #if search is empty, return all
    end
  end

end