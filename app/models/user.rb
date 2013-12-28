class User < ActiveRecord::Base

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true

  validates :password, length: {minimum: 6}
  validates :password_confirmation, presence: true
  has_secure_password
end