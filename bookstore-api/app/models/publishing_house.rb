# In Author we changed :books to :published. Likewise, we need to make that change to PublishingHouse.
class PublishingHouse < ApplicationRecord
  has_many :published, as: :publisher, foreign_key: :publisher_id, class_name: 'Book'
end
