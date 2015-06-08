class User < ActiveRecord::Base
  self.has_secure_password()

  has_many :users_deeds
  has_many :interests
  has_many :causes, through: :interests
  has_many :deeds, through: :users_deeds
end
