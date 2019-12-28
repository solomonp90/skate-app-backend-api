class Skater < ApplicationRecord
has_many :posts
has_many :spots, through: :posts
end
