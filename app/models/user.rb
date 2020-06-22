class User < ApplicationRecord
  has_many :articles
  before_save {self.email = email.downcase }
  validates :username, presence: true,
            uniqueness: { case_sensetive: false },
            length: {minimum: 3, maximum: 50}

  VALID_EMAIL_REGEX= /[\w-]+@([\w-]+\.)+[\w-]+/i

  validates :email, presence: true,
            uniqueness: { case_sensetive: false },
            length: { maximum: 50},
            format: { with: VALID_EMAIL_REGEX } 
  has_secure_password
end