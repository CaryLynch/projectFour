class UsersDeed < ActiveRecord::Base
  belongs_to :user
  belongs_to :deed
end