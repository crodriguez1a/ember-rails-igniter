# Authors that behave as publishers offer a fixed 10% discount. There is no field in the database: we will return a constant.

# Here we have to add two has_many :books statements. First one because an author authors books. And the second one because he can publish books. As both are book collections, we will alter the name of the published items and call it published. Rails can’t infere those relationship details so we need to tell it where the table and foreign key are located.

# The published books are published by a publisher (our polymorphic interface). We associate it using the as keyword.

class Author < ApplicationRecord
  def discount() 10 end
  has_many :books
  has_many :published, foreign_key: :publisher_id, class_name: 'Book', as: :publisher
end
