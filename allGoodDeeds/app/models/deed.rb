class Deed < ActiveRecord::Base
  belongs_to :organizations
  has_many :users_deeds
end
