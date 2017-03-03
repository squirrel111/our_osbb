class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true
  validates :name, presence: true,
            length: { minimum: 2 }
  validates :password_digest, presence: true,
            length: { minimum: 6 }
end
