class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :name, :length => {:maximum => 12}
  validates :password, :length => {:in => 6..15}

  has_secure_password
end
