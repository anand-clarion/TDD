class User < ActiveRecord::Base
  ### Associations ###
  has_many :microposts
  ##############################
end
