# Ask the serializer to include authored and published books’ ids. Additionally, add the :discount property.
class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name, :discount
  has_many :books
  has_many :published
end
