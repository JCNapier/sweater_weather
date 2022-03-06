class User < ApplicationRecord
  validates :email, 
    :presence => {message: "can't be blank"}, 
    :uniqueness => true
  validates :password_digest, 
    :presence => {message: "can't be blank"}

  has_secure_password
  has_secure_token :auth_token

  before_create :set_access_token

  private 

  def set_access_token
    self.auth_token = generate_token 
  end

  def generate_token 
    loop do 
      token = SecureRandom.hex(10)
      break token unless User.where(auth_token: token).exists?
    end
  end
end
