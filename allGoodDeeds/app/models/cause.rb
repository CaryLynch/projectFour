class Cause < ActiveRecord::Base
  has_many :interests
  has_many :organizations
end