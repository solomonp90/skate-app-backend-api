class SpotSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :kind, :details, :zip
  has_many :posts
end
