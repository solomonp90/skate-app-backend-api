class Skater < ApplicationRecord
has_many :posts
has_many :spots, through: :posts

has_secure_password

validates :name, presence: true, uniqueness: true

end
