class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 12 }
  validates :email, presence: true, uniqueness: true, length: { minimum: 4}
  validates :password, length: { in: 6..15 }

  has_secure_password
end
