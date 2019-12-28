class Spot < ApplicationRecord
has_many :posts
has_many :skaters, through: :posts
end
