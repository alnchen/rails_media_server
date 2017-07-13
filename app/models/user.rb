class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :session_token, presence: true, uniqueness: true
  validates :password_digest, presence: true, uniqueness: true

  before_validation :ensure_session_token

  def ensure_session_token
  end

  def self.find_by_credentials
  end

  def password=()
  end

  def is_password?(password)
  end

  def 
  end
end
