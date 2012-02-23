class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
  before_save :create_remember_token

  validates :name, presence:true, uniqueness:true
  valid_email_regex = /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/i
  validates :email, presence:true, format: { with: valid_email_regex }
  validates :password, length: { minimum: 6}

  private

    def create_remember_token
       self.remember_token = SecureRandom.urlsafe_base64
    end

end
