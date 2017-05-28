# We simply add the aforementioned published property in order to get those published book ids in our JSON.
class PublishingHouseSerializer < ActiveModel::Serializer
  attributes :id, :name, :discount
  has_many :published
end
