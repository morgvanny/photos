class User < ApplicationRecord
  has_secure_password
  has_many :photos
  validates_uniqueness_of :username
end
