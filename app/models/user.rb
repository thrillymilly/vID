class User < ApplicationRecord
  validates :email,
          :password_digest, presence: true

  validates :email, uniqueness: { case_sensitive: false }

  has_secure_password

  has_many :identifications
end
