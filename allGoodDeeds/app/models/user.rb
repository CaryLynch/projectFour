class User < ActiveRecord::Base
  has_secure_password
  has_many :interests
  has_many :users_deeds
  has_many :causes, through: :interests
  has_many :deeds, through: :users_deeds
end
