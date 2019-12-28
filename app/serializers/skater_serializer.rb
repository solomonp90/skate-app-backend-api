class SkaterSerializer < ActiveModel::Serializer
  attributes :id, :name, :zip
  has_many :posts
end
