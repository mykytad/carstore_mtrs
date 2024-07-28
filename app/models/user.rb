class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  has_many :cars, :dependent => :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise devise :database_authenticatable, :registerable,
                :recoverable, :rememberable, :validatable,
                :jwt_authenticatable, jwt_revocation_strategy: self
end
