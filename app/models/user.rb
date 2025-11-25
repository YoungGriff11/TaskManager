class User < ApplicationRecord
  has_secure_password
  has_many :tasks, dependent: :destroy

  validates :email, presence: true, uniqueness: true

  def generate_jwt
    JWT.encode(
      { user_id: id, exp: 24.hours.from_now.to_i },
      Rails.configuration.jwt_secret
    )
  end
end
