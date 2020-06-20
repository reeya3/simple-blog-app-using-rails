class User < ApplicationRecord
  validates :username, presence: true,
            uniqueness: { case_sensetive: false },
            length: {minimum: 3, maximum: 50}

  VALID_EMAIL_REGEX= /[\w-]+@([\w-]+\.)+[\w-]+/i

  validates :email, presence: true,
            uniqueness: { case_sensetive: false },
            length: { maximum: 50},
            format: { with: VALID_EMAIL_REGEX } 
end