class User < ApplicationRecord
  validates :username, uniqueness: true
  has_secure_password
  validates :firstname, presence:true
  validates :lastname, presence:true
end
