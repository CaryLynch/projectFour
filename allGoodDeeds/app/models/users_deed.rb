class Users_deed < ActiveRecord::Base
  belongs_to :users
  belongs_to :deeds
end