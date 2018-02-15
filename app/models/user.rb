class User < ApplicationRecord
  has_many :articles, dependent: :destroy
  # => <dependent: :destroy> => if user is deleted all dependent articles to user also be deleted
  before_save { self.email = email.downcase }
  validates :username, presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 50 }

  VALID_EMAIL_REGEX = /\A[-\w.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
            uniqueness: { case_sensitive: false },
            length: { maximum: 354 },
            format: { with: VALID_EMAIL_REGEX }

  has_secure_password
end
