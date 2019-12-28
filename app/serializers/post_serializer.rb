class PostSerializer < ActiveModel::Serializer
  attributes :id, :author, :content, :image, :video
  has_one :spot
  has_one :skater
end
