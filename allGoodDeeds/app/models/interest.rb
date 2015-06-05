class Interest < ActiveRecord::Base
  belongs_to :users
  belongs_to :causes

end