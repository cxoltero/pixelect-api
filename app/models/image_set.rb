class ImageSet < ActiveRecord::Base

  has_many :images
  has_many :comments
  belongs_to :user

end