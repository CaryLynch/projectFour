class Users_deed < ActiveRecord::Base
  belongs_to :user
  belongs_to :deed
end