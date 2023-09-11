class User < ApplicationRecord
  has_secure_password

  def authenticate(password)
    BCrypt::Password.new(password_digest) == password
  end
  validates :user_name, presence: true
  validates :email, presence: true, uniqueness: true
end
