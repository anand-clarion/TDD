class Micropost < ActiveRecord::Base

  ### Associations ###
  belongs_to :user
  ####################

  ### Validation ###
  validates :content, length: { maximum: 140 }
  validates :content, length: { maximum: 140 }
  ##############################################

end
