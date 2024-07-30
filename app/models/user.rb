class User < ApplicationRecord
  has_many :cars, :dependent => :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
  include Devise::JWT::RevocationStrategies::JTIMatcher

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise devise :database_authenticatable, 
                :recoverable, :rememberable, :validatable,
                :jwt_authenticatable, jwt_revocation_strategy: self

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "encrypted_password", "id", "jti", "phone", "remember_created_at", "reset_password_sent_at", "reset_password_token", "updated_at"]
  end
end
